import 'package:countdown_app/core/firebase_exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';

@freezed
class Response<T> with _$Response<T> {
  const factory Response.success({T? data}) = Success<T>;

  const factory Response.failure({required FirebaseFailures failure}) =
      Failure<T>;
}
