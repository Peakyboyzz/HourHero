import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hourhero/domain/jobs/i_jobs_facade.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/domain/jobs/jobs_failure.dart';
import 'package:injectable/injectable.dart';

part 'jobs_watcher_event.dart';
part 'jobs_watcher_state.dart';
part 'jobs_watcher_bloc.freezed.dart';

@injectable
class JobsWatcherBloc extends Bloc<JobsWatcherEvent, JobsWatcherState> {
  final IJobsFacade _jobsRepository;
  StreamSubscription<Either<JobsFailure, List<Job>>>? _jobsStreamSubscription;

  JobsWatcherBloc(this._jobsRepository)
      : super(const JobsWatcherState.initial()) {
    on<JobsWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const JobsWatcherState.loadInProgress());
          await _jobsStreamSubscription?.cancel();
          _jobsStreamSubscription = _jobsRepository.watchAll().listen(
                (failureOrJobs) =>
                    add(JobsWatcherEvent.jobsReceived(failureOrJobs)),
              );
        },
        jobsReceived: (e) async {
          e.failureOrJobs.fold(
            (l) => emit(JobsWatcherState.loadFailure(l)),
            (r) => emit(JobsWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _jobsStreamSubscription?.cancel();
    return super.close();
  }
}
