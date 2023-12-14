part of 'countdown_form_bloc.dart';

@freezed
class CountdownFormState with _$CountdownFormState {
  const factory CountdownFormState({
    required Countdown countdown,
    required bool isFormButtonPressed,
    required bool isDateSelected,
    required bool isTimeSelected,
    required bool isSaving,
    required bool isEditing,
    required int? selectedCountdownIndex,
    required Response? failureOrSuccess,
  }) = _CountdownCreatorState;

  factory CountdownFormState.initial() => CountdownFormState(
        countdown: Countdown.empty(),
        isFormButtonPressed: false,
        isEditing: false,
        isSaving: false,
        isDateSelected: false,
        isTimeSelected: false,
        selectedCountdownIndex: null,
        failureOrSuccess: null
      );
}
