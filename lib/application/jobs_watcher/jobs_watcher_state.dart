part of 'jobs_watcher_bloc.dart';

@freezed
class JobsWatcherState with _$JobsWatcherState {
  const factory JobsWatcherState.initial() = _Initial;
  const factory JobsWatcherState.loadInProgress() = _LoadInProgress;
  const factory JobsWatcherState.loadSuccess(List<Job> jobs) = _LoadSuccess;
  const factory JobsWatcherState.loadFailure(JobsFailure jobsFailure) =
      _LoadFailure;
}
