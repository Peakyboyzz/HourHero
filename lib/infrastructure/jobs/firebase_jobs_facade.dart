import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:hourhero/domain/jobs/i_jobs_facade.dart';
import 'package:hourhero/domain/jobs/job.dart';
import 'package:hourhero/domain/jobs/jobs_failure.dart';
import 'package:hourhero/infrastructure/core/firestore_helper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IJobsFacade)
class FirebaseJobsRepository implements IJobsFacade {
  final FirebaseFirestore _firestore;

  FirebaseJobsRepository(this._firestore);

  @override
  Stream<Either<JobsFailure, List<Job>>> watchAll() async* {
    final jobsDoc = _firestore.jobsDocument;
    yield* jobsDoc
        // .baseCollection
        // .orderBy('created_at', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<JobsFailure, List<Job>>(
            snapshot.docs
                .map((doc) => Job.fromFirestore(
                    doc as DocumentSnapshot<Map<String, dynamic>>))
                .toList(),
          ),
        )
        .onErrorReturnWith(
      (error, _) {
        if (error is FirebaseException &&
            error.message!.contains('PERMISSION_DENIED')) {
          return left(const JobsFailure.inSufficientPermission());
        } else {
          return left(const JobsFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<JobsFailure, Job>> watchDetail(String id) async* {
    final jobsDoc = _firestore.jobsDocument;
    yield* jobsDoc
        // .baseCollection
        // .orderBy('created_at', descending: true)
        .doc(id)
        .snapshots()
        .map(
          (snapshot) => right<JobsFailure, Job>(
            Job.fromFirestore(
              snapshot as DocumentSnapshot<Map<String, dynamic>>,
            ),
          ),
        )
        .onErrorReturnWith(
      (error, _) {
        if (error is FirebaseException &&
            error.message!.contains('PERMISSION_DENIED')) {
          return left(const JobsFailure.inSufficientPermission());
        } else {
          return left(const JobsFailure.unexpected());
        }
      },
    );
  }
}
