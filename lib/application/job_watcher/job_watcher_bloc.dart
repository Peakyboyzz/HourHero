import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hourhero/domain/jobs/i_jobs_facade.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/domain/jobs/jobs_failure.dart';
import 'package:injectable/injectable.dart';

part 'job_watcher_event.dart';
part 'job_watcher_state.dart';
part 'job_watcher_bloc.freezed.dart';

@injectable
class JobWatcherBloc extends Bloc<JobWatcherEvent, JobWatcherState> {
  final IJobsFacade _jobsRepository;
  StreamSubscription<Either<JobsFailure, Job>>? _jobStreamSubscription;

  JobWatcherBloc(this._jobsRepository)
      : super(const JobWatcherState.initial()) {
    on<JobWatcherEvent>((event, emit) async {
      await event.map(
        watchStarted: (e) async {
          emit(const JobWatcherState.loadInProgress());
          await _jobStreamSubscription?.cancel();
          _jobStreamSubscription = _jobsRepository.watchDetail(e.id).listen(
                (failureOrJob) =>
                    add(JobWatcherEvent.jobReceived(failureOrJob)),
              );
        },
        jobReceived: (e) async {
          e.failureOrJob.fold(
            (l) => emit(JobWatcherState.loadFailure(l)),
            (r) => emit(JobWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _jobStreamSubscription?.cancel();
    return super.close();
  }
}
