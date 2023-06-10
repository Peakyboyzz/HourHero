import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hourhero/domain/auth/i_auth_facade.dart';
import 'package:hourhero/domain/core/errors.dart';
import 'package:hourhero/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.email);
  }

  CollectionReference get jobsDocument =>
      FirebaseFirestore.instance.collection('jobs');
}

extension DocumentReferenceX on DocumentReference {}
