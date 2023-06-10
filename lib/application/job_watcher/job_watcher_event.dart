part of 'job_watcher_bloc.dart';

@freezed
class JobWatcherEvent with _$JobWatcherEvent {
  const factory JobWatcherEvent.watchStarted(String id) = _WatchDetailStarted;
  const factory JobWatcherEvent.jobReceived(
      Either<JobsFailure, Job> failureOrJob) = _JobReceived;
}
