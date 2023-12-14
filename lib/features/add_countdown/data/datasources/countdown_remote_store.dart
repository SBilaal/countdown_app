import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:countdown_app/core/firebase_exceptions.dart';
import 'package:countdown_app/core/network_checker.dart';
import 'package:countdown_app/core/response.dart';
import 'package:countdown_app/core/services/firebase_auth_service.dart';
import 'package:countdown_app/features/add_countdown/data/models/countdown_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class CountdownRemoteStore {
  final FirebaseFirestore db;
  final NetworkInfo networkInfo;

  static const countdowns = 'countdowns';

  CountdownRemoteStore({required this.db, required this.networkInfo});

  Future<Response> createCountdown(CountdownDTO countdown) async {
    if (await networkInfo.isConnected) {
      await db.enableNetwork();
    } else {
      await db.disableNetwork();
    }
    try {
      final userCountdowns = db
          .userDocument()
          .collection(countdowns)
          .withConverter<CountdownDTO>(
              fromFirestore: CountdownDTO.fromFirestore,
              toFirestore: (countdown, _) => countdown.toFirestore());

      await userCountdowns.doc(countdown.id).set(countdown);
      return const Response.success();
    } on FirebaseException catch (e) {
      return Response.failure(failure: FirebaseFailures.getFirebaseFailure(e));
    }
  }

  Stream<Response<List<CountdownDTO>>> getCountdowns() async* {
    yield* db
        .collection(countdowns)
        .orderBy('date', descending: true)
        .snapshots()
        .map((snapshot) {
      return Response.success(
          data: snapshot.docs
              .map((doc) => CountdownDTO.fromFirestore(doc, null))
              .toList());
    });
  }
}

extension FireStoreX on FirebaseFirestore {
  DocumentReference userDocument() {
    final user = FirebaseAuthService().getUser();
    return FirebaseFirestore.instance.collection('users').doc(user!.id);
  }
}
