import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rxdart/rxdart.dart';

class CountdownLocalStore {
  CountdownLocalStore._();
  static final _repository = CountdownLocalStore._();
  static final instance = _repository;

  final _countdownBox = Hive.box('countdown');

  ValueListenable get countdownListenable => _countdownBox.listenable();
  Stream<List<Countdown>> getAllCountdowns() async* {
    // print('Printing countdown values');
    // print(_countdownBox.values);
    // if (_countdownBox.isEmpty) {
    //   yield [];
    // }
    final List<Countdown> countdownList =
        List<Countdown>.from(_countdownBox.values);
    yield* _countdownBox.watch().map((event) {
    print('Printing countdown values');
    print(_countdownBox.values);
    if (_countdownBox.isEmpty) {
      return <Countdown>[];
    }
      print('in map of watch stream hive');
      return countdownList;
    }).startWith(countdownList);
  }

  Future<void> addCountdown(Countdown countdown) async {
    await _countdownBox.put(countdown.id, countdown);
    // await _countdownBox.add(countdown);
  }

  Future<void> updateCountdown(Countdown countdown) async {
    await addCountdown(countdown);
    // countdown.save();
  }

  Future<void> deleteCountdown(Countdown countdown) async {
    await _countdownBox.delete(countdown.id);
    // countdown.delete();
  }
}
