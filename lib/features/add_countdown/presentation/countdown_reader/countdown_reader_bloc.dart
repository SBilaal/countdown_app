import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:countdown_app/core/firebase_exceptions.dart';
import 'package:countdown_app/core/response.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:countdown_app/features/add_countdown/data/repositories/countdown_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'countdown_reader_event.dart';
part 'countdown_reader_state.dart';
part 'countdown_reader_bloc.freezed.dart';

@injectable
class CountdownReaderBloc
    extends Bloc<CountdownReaderEvent, CountdownReaderState> {
  final CountdownRepository _countdownRepository;
  StreamSubscription? _streamSubscription;
  CountdownReaderBloc(this._countdownRepository) : super(const _Initial()) {
    on<_ReadStarted>((event, emit) async {
      emit(const CountdownReaderState.loading());
      // final stream = _countdownRepository.getAllCountdowns();
      // await for (final response in stream) {
      //   response.when(
      //     success: (countdowns) {
      //       print('Successfully reading data');
      //       emit(CountdownReaderState.data(countdowns!));
      //       print('Succesfully read dayta.');
      //     },
      //     failure: (failure) {
      //       print('Failure');
      //       // emit(CountdownReaderState.error(failure));
      //     },
      //   );
      // }
      _streamSubscription =
          _countdownRepository.getAllCountdowns().listen((response) {
        add(CountdownReaderEvent.countdownsReceived(
            countdownsOrFailure: response));
      });
    });
    on<_CountdownsReceived>((event, emit) {
      print('COuntdown received');
      event.countdownsOrFailure.when(
        success: (countdowns) {
          emit(CountdownReaderState.data(countdowns!));
        },
        failure: (failure) {
          print('Failure');
          emit(CountdownReaderState.error(failure));
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
