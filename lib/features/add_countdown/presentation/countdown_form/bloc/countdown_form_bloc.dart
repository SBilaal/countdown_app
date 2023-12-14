import 'package:bloc/bloc.dart';
import 'package:countdown_app/core/response.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:countdown_app/features/add_countdown/data/repositories/countdown_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'countdown_form_event.dart';
part 'countdown_form_state.dart';
part 'countdown_form_bloc.freezed.dart';

@injectable
class CountdownFormBloc extends Bloc<CountdownFormEvent, CountdownFormState> {
  final CountdownRepository repository;
  CountdownFormBloc(this.repository) : super(CountdownFormState.initial()) {
    on<_Initialized>((event, emit) {
      if (event.countdown == null) return emit(state);
      emit(state.copyWith(countdown: event.countdown!, isEditing: true, isDateSelected: true, isTimeSelected: true, isFormButtonPressed: true));
    });
    on<_TitleChanged>(
      (event, emit) => emit(
        state.copyWith(
          countdown: state.countdown.copyWith(title: event.title),
        ),
      ),
    );
    on<_CountdownCreated>((event, emit) => emit(state.copyWith(isFormButtonPressed: true)));
    on<_DateSelected>(
      (event, emit) => emit(state.copyWith(
        isDateSelected: true,
        countdown: state.countdown.copyWith(date: event.date),
      )),
    );
    on<_TimeSelected>(
      (event, emit) => emit(state.copyWith(
        isTimeSelected: true,
        countdown: state.countdown.copyWith(
          date: state.countdown.date.add(Duration(
            hours: event.time.hour,
            minutes: event.time.minute,
          )),
        ),
      )),
    );
    on<_IconSelected>(
      (event, emit) => emit(state.copyWith(
        countdown: state.countdown.copyWith(iconIndex: event.iconIndex),
      )),
    );
    on<_ColorSelected>(
      (event, emit) => emit(state.copyWith(
        countdown: state.countdown.copyWith(colorIndex: event.colorIndex),
      )),
    );
    on<_Saved>((event, emit) async {
      emit(state.copyWith(isSaving: true));
      Sentry.configureScope((scope) => scope.setContexts(state.countdown.title, state.countdown.toString()));
      Sentry.addBreadcrumb(Breadcrumb(message: "Saving Countdown..."));
      Response response;
      response = state.isEditing ? await repository.updateCountdown(state.countdown) : await repository.addCountdown(state.countdown);
      emit(state.copyWith(isSaving: false, failureOrSuccess: response));
      response.mapOrNull(success: (value) {
        Sentry.captureMessage("Successfully saved");
      });
    });
  }
}
