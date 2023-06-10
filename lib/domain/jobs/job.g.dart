// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as String?,
      jobFirm: json['job_firm'] as String,
      jobName: json['job_name'] as String,
      jobType: json['job_type'] as String,
      jobKind: json['job_kind'] as String,
      jobDescription: json['job_description'] as String,
      jobSalary: json['job_salary'] as String,
      jobPeriod: json['job_period'] as String,
      jobLocation: json['job_location'] as String,
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'job_firm': instance.jobFirm,
      'job_name': instance.jobName,
      'job_type': instance.jobType,
      'job_kind': instance.jobKind,
      'job_description': instance.jobDescription,
      'job_salary': instance.jobSalary,
      'job_period': instance.jobPeriod,
      'job_location': instance.jobLocation,
    };
