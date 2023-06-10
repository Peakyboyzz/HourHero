import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_failure.freezed.dart';

@freezed
class JobsFailure with _$JobsFailure {
  const factory JobsFailure.unexpected() = _Unexpected;
  const factory JobsFailure.inSufficientPermission() = _InSufficientPermission;
  const factory JobsFailure.unableToUpdate() = _UnableToUpdate;
}
