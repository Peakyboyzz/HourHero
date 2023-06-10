import 'package:dartz/dartz.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/domain/jobs/jobs_failure.dart';

abstract class IJobsFacade {
  Stream<Either<JobsFailure, List<Job>>> watchAll();
  Stream<Either<JobsFailure, Job>> watchDetail(String id);
}
