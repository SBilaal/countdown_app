import 'package:countdown_app/features/add_countdown/data/models/countdown.dart';
import 'package:hive/hive.dart';

class CountdownStore {
  CountdownStore._();
  static final _repository = CountdownStore._();
  static final instance = _repository;

  final _countdownBox = Hive.box('countdown');


  Future<void> addCountdown(Countdown countdown) async {
    await _countdownBox.add(countdown);
  }

  Future<void> updateCountdown(Countdown countdown) async {
    countdown.save();
  }

  Future<void> deleteCountdown(Countdown countdown) async {
    countdown.delete();
  }

}
