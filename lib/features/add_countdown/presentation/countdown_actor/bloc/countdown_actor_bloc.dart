import 'package:bloc/bloc.dart';
import 'package:countdown_app/core/firebase_exceptions.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:countdown_app/features/add_countdown/data/repositories/countdown_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'countdown_actor_event.dart';
part 'countdown_actor_state.dart';
part 'countdown_actor_bloc.freezed.dart';

@injectable
class CountdownActorBloc
    extends Bloc<CountdownActorEvent, CountdownActorState> {
  final CountdownRepository repository;
  CountdownActorBloc(this.repository)
      : super(const CountdownActorState.initial()) {
    on<_DeletedTapped>((event, emit) async {
      emit(const CountdownActorState.loading());
      final response = await repository.deleteCountdown(event.countdown);
      response.when(
          success: (data) => const CountdownActorState.deleteSuccess(),
          failure: (failure) => CountdownActorState.deleteFailure(failure));
    });
  }
}
