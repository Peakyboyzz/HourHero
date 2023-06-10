part of 'job_watcher_bloc.dart';

@freezed
class JobWatcherState with _$JobWatcherState {
  const factory JobWatcherState.initial() = _Initial;
  const factory JobWatcherState.loadInProgress() = _LoadInProgress;
  const factory JobWatcherState.loadSuccess(Job job) = _LoadSuccess;
  const factory JobWatcherState.loadFailure(JobsFailure jobsFailure) =
      _LoadFailure;
}
