part of 'countdown_actor_bloc.dart';

@freezed
class CountdownActorState with _$CountdownActorState {
  const factory CountdownActorState.initial() = _Initial;
  const factory CountdownActorState.loading() = _Loading;
  const factory CountdownActorState.deleteFailure(FirebaseFailures failure) = _DeleteFailure;
  const factory CountdownActorState.deleteSuccess() = _DeleteSuccess;
}
