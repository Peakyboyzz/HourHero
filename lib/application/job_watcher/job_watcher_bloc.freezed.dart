// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchStarted,
    required TResult Function(Either<JobsFailure, Job> failureOrJob)
        jobReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchStarted,
    TResult? Function(Either<JobsFailure, Job> failureOrJob)? jobReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchStarted,
    TResult Function(Either<JobsFailure, Job> failureOrJob)? jobReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDetailStarted value) watchStarted,
    required TResult Function(_JobReceived value) jobReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchDetailStarted value)? watchStarted,
    TResult? Function(_JobReceived value)? jobReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDetailStarted value)? watchStarted,
    TResult Function(_JobReceived value)? jobReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobWatcherEventCopyWith<$Res> {
  factory $JobWatcherEventCopyWith(
          JobWatcherEvent value, $Res Function(JobWatcherEvent) then) =
      _$JobWatcherEventCopyWithImpl<$Res, JobWatcherEvent>;
}

/// @nodoc
class _$JobWatcherEventCopyWithImpl<$Res, $Val extends JobWatcherEvent>
    implements $JobWatcherEventCopyWith<$Res> {
  _$JobWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchDetailStartedCopyWith<$Res> {
  factory _$$_WatchDetailStartedCopyWith(_$_WatchDetailStarted value,
          $Res Function(_$_WatchDetailStarted) then) =
      __$$_WatchDetailStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_WatchDetailStartedCopyWithImpl<$Res>
    extends _$JobWatcherEventCopyWithImpl<$Res, _$_WatchDetailStarted>
    implements _$$_WatchDetailStartedCopyWith<$Res> {
  __$$_WatchDetailStartedCopyWithImpl(
      _$_WatchDetailStarted _value, $Res Function(_$_WatchDetailStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_WatchDetailStarted(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchDetailStarted implements _WatchDetailStarted {
  const _$_WatchDetailStarted(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'JobWatcherEvent.watchStarted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchDetailStarted &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchDetailStartedCopyWith<_$_WatchDetailStarted> get copyWith =>
      __$$_WatchDetailStartedCopyWithImpl<_$_WatchDetailStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchStarted,
    required TResult Function(Either<JobsFailure, Job> failureOrJob)
        jobReceived,
  }) {
    return watchStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchStarted,
    TResult? Function(Either<JobsFailure, Job> failureOrJob)? jobReceived,
  }) {
    return watchStarted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchStarted,
    TResult Function(Either<JobsFailure, Job> failureOrJob)? jobReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDetailStarted value) watchStarted,
    required TResult Function(_JobReceived value) jobReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchDetailStarted value)? watchStarted,
    TResult? Function(_JobReceived value)? jobReceived,
  }) {
    return watchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDetailStarted value)? watchStarted,
    TResult Function(_JobReceived value)? jobReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchDetailStarted implements JobWatcherEvent {
  const factory _WatchDetailStarted(final String id) = _$_WatchDetailStarted;

  String get id;
  @JsonKey(ignore: true)
  _$$_WatchDetailStartedCopyWith<_$_WatchDetailStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JobReceivedCopyWith<$Res> {
  factory _$$_JobReceivedCopyWith(
          _$_JobReceived value, $Res Function(_$_JobReceived) then) =
      __$$_JobReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<JobsFailure, Job> failureOrJob});
}

/// @nodoc
class __$$_JobReceivedCopyWithImpl<$Res>
    extends _$JobWatcherEventCopyWithImpl<$Res, _$_JobReceived>
    implements _$$_JobReceivedCopyWith<$Res> {
  __$$_JobReceivedCopyWithImpl(
      _$_JobReceived _value, $Res Function(_$_JobReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrJob = null,
  }) {
    return _then(_$_JobReceived(
      null == failureOrJob
          ? _value.failureOrJob
          : failureOrJob // ignore: cast_nullable_to_non_nullable
              as Either<JobsFailure, Job>,
    ));
  }
}

/// @nodoc

class _$_JobReceived implements _JobReceived {
  const _$_JobReceived(this.failureOrJob);

  @override
  final Either<JobsFailure, Job> failureOrJob;

  @override
  String toString() {
    return 'JobWatcherEvent.jobReceived(failureOrJob: $failureOrJob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobReceived &&
            (identical(other.failureOrJob, failureOrJob) ||
                other.failureOrJob == failureOrJob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrJob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobReceivedCopyWith<_$_JobReceived> get copyWith =>
      __$$_JobReceivedCopyWithImpl<_$_JobReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) watchStarted,
    required TResult Function(Either<JobsFailure, Job> failureOrJob)
        jobReceived,
  }) {
    return jobReceived(failureOrJob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? watchStarted,
    TResult? Function(Either<JobsFailure, Job> failureOrJob)? jobReceived,
  }) {
    return jobReceived?.call(failureOrJob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? watchStarted,
    TResult Function(Either<JobsFailure, Job> failureOrJob)? jobReceived,
    required TResult orElse(),
  }) {
    if (jobReceived != null) {
      return jobReceived(failureOrJob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchDetailStarted value) watchStarted,
    required TResult Function(_JobReceived value) jobReceived,
  }) {
    return jobReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchDetailStarted value)? watchStarted,
    TResult? Function(_JobReceived value)? jobReceived,
  }) {
    return jobReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchDetailStarted value)? watchStarted,
    TResult Function(_JobReceived value)? jobReceived,
    required TResult orElse(),
  }) {
    if (jobReceived != null) {
      return jobReceived(this);
    }
    return orElse();
  }
}

abstract class _JobReceived implements JobWatcherEvent {
  const factory _JobReceived(final Either<JobsFailure, Job> failureOrJob) =
      _$_JobReceived;

  Either<JobsFailure, Job> get failureOrJob;
  @JsonKey(ignore: true)
  _$$_JobReceivedCopyWith<_$_JobReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JobWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Job job) loadSuccess,
    required TResult Function(JobsFailure jobsFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Job job)? loadSuccess,
    TResult? Function(JobsFailure jobsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Job job)? loadSuccess,
    TResult Function(JobsFailure jobsFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobWatcherStateCopyWith<$Res> {
  factory $JobWatcherStateCopyWith(
          JobWatcherState value, $Res Function(JobWatcherState) then) =
      _$JobWatcherStateCopyWithImpl<$Res, JobWatcherState>;
}

/// @nodoc
class _$JobWatcherStateCopyWithImpl<$Res, $Val extends JobWatcherState>
    implements $JobWatcherStateCopyWith<$Res> {
  _$JobWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$JobWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'JobWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Job job) loadSuccess,
    required TResult Function(JobsFailure jobsFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Job job)? loadSuccess,
    TResult? Function(JobsFailure jobsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Job job)? loadSuccess,
    TResult Function(JobsFailure jobsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JobWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$JobWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'JobWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Job job) loadSuccess,
    required TResult Function(JobsFailure jobsFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Job job)? loadSuccess,
    TResult? Function(JobsFailure jobsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Job job)? loadSuccess,
    TResult Function(JobsFailure jobsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements JobWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Job job});

  $JobCopyWith<$Res> get job;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$JobWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
  }) {
    return _then(_$_LoadSuccess(
      null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JobCopyWith<$Res> get job {
    return $JobCopyWith<$Res>(_value.job, (value) {
      return _then(_value.copyWith(job: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.job);

  @override
  final Job job;

  @override
  String toString() {
    return 'JobWatcherState.loadSuccess(job: $job)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.job, job) || other.job == job));
  }

  @override
  int get hashCode => Object.hash(runtimeType, job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Job job) loadSuccess,
    required TResult Function(JobsFailure jobsFailure) loadFailure,
  }) {
    return loadSuccess(job);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Job job)? loadSuccess,
    TResult? Function(JobsFailure jobsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(job);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Job job)? loadSuccess,
    TResult Function(JobsFailure jobsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(job);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements JobWatcherState {
  const factory _LoadSuccess(final Job job) = _$_LoadSuccess;

  Job get job;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({JobsFailure jobsFailure});

  $JobsFailureCopyWith<$Res> get jobsFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$JobWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobsFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == jobsFailure
          ? _value.jobsFailure
          : jobsFailure // ignore: cast_nullable_to_non_nullable
              as JobsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JobsFailureCopyWith<$Res> get jobsFailure {
    return $JobsFailureCopyWith<$Res>(_value.jobsFailure, (value) {
      return _then(_value.copyWith(jobsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.jobsFailure);

  @override
  final JobsFailure jobsFailure;

  @override
  String toString() {
    return 'JobWatcherState.loadFailure(jobsFailure: $jobsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.jobsFailure, jobsFailure) ||
                other.jobsFailure == jobsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobsFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Job job) loadSuccess,
    required TResult Function(JobsFailure jobsFailure) loadFailure,
  }) {
    return loadFailure(jobsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Job job)? loadSuccess,
    TResult? Function(JobsFailure jobsFailure)? loadFailure,
  }) {
    return loadFailure?.call(jobsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Job job)? loadSuccess,
    TResult Function(JobsFailure jobsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(jobsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements JobWatcherState {
  const factory _LoadFailure(final JobsFailure jobsFailure) = _$_LoadFailure;

  JobsFailure get jobsFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
