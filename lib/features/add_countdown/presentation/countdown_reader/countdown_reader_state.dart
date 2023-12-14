part of 'countdown_reader_bloc.dart';

@freezed
class CountdownReaderState with _$CountdownReaderState {
  const factory CountdownReaderState.initial() = _Initial;
  const factory CountdownReaderState.loading() = _Loading;
  const factory CountdownReaderState.data(List<Countdown> countdowns) = _Data;
  const factory CountdownReaderState.error(FirebaseFailures error) = _Error;
}
