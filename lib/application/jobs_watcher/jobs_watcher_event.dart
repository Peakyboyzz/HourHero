part of 'jobs_watcher_bloc.dart';

@freezed
class JobsWatcherEvent with _$JobsWatcherEvent {
  const factory JobsWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory JobsWatcherEvent.jobsReceived(
      Either<JobsFailure, List<Job>> failureOrJobs) = _JobReceived;
}
