part of 'countdown_form_bloc.dart';

@freezed
class CountdownFormEvent with _$CountdownFormEvent {
  const factory CountdownFormEvent.initialized([Countdown? countdown]) =
      _Initialized;
  const factory CountdownFormEvent.titleChanged({required String  title}) =
      _TitleChanged;
  const factory CountdownFormEvent.countdownCreated() = _CountdownCreated;
  const factory CountdownFormEvent.dateSelected({required DateTime date}) =
      _DateSelected;
  const factory CountdownFormEvent.timeSelected({required TimeOfDay time}) =
      _TimeSelected;
  const factory CountdownFormEvent.iconSelected({required int iconIndex}) =
      _IconSelected;
  const factory CountdownFormEvent.saved() = _Saved;
  const factory CountdownFormEvent.colorSelected({required int colorIndex}) =
      _ColorSelected;
}
