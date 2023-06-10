import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  const factory Job({
    @JsonKey(includeToJson: false) final String? id,
    @JsonKey(name: 'job_firm') required final String jobFirm,
    @JsonKey(name: 'job_name') required final String jobName,
    @JsonKey(name: 'job_type') required final String jobType,
    @JsonKey(name: 'job_kind') required final String jobKind,
    @JsonKey(name: 'job_description') required final String jobDescription,
    @JsonKey(name: 'job_salary') required final String jobSalary,
    @JsonKey(name: 'job_period') required final String jobPeriod,
    @JsonKey(name: 'job_location') required final String jobLocation,
  }) = _Job;

  const Job._();

  Job toDomain() {
    return Job(
      jobFirm: jobFirm,
      jobName: jobName,
      jobType: jobType,
      jobKind: jobKind,
      jobDescription: jobDescription,
      jobSalary: jobSalary,
      jobPeriod: jobPeriod,
      jobLocation: jobLocation,
    );
  }

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  factory Job.fromFirebase(DocumentSnapshot doc) {
    return Job.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  factory Job.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return Job.fromJson(doc.data()!).copyWith(id: doc.id);
  }
}
