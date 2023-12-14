part of 'countdown_actor_bloc.dart';

@freezed
class CountdownActorEvent with _$CountdownActorEvent {
  const factory CountdownActorEvent.deletedTapped(Countdown countdown) = _DeletedTapped;
}