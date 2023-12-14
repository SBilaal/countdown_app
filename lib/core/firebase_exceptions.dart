import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_exceptions.freezed.dart';

@freezed
class FirebaseFailures with _$FirebaseFailures {
  const factory FirebaseFailures.permissionDenied() = PermissionDenied;
  const factory FirebaseFailures.notFound() = NotFound;
  const factory FirebaseFailures.unknown() = Unknown;

  static FirebaseFailures getFirebaseFailure(FirebaseException error) {
    FirebaseFailures firebaseExceptions;
    if (error.code.contains('permission-denied')) {
      firebaseExceptions = const FirebaseFailures.permissionDenied();
    } else if (error.code.contains('not-found')) {
      firebaseExceptions = const FirebaseFailures.notFound();
    } else {
      firebaseExceptions = const FirebaseFailures.unknown();
    }
    return firebaseExceptions;
  }
}
