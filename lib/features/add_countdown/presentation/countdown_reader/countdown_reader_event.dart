part of 'countdown_reader_bloc.dart';

@freezed
class CountdownReaderEvent with _$CountdownReaderEvent {
  const factory CountdownReaderEvent.readStarted() = _ReadStarted;
  const factory CountdownReaderEvent.countdownsReceived(
      {required Response<List<Countdown>> countdownsOrFailure}) = _CountdownsReceived;
}
