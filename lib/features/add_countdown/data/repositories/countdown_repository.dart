import 'package:countdown_app/features/add_countdown/data/datasources/countdown_store.dart';
import 'package:countdown_app/features/add_countdown/data/models/countdown.dart';

class CountdownRepository {
  final CountdownStore countdownStore;

  CountdownRepository({required this.countdownStore});

  Future<List<Countdown>> getAllCountdowns() async {
    return countdownStore.getAllCountdowns();
  }

  Future<void> addCountdown(Countdown countdown) async {
    await countdownStore.addCountdown(countdown);
  }

  Future<void> updateCountdown(Countdown countdown) async {
    await countdownStore.updateCountdown(countdown);
  }

  Future<void> deleteCountdown(Countdown countdown) async {
    await countdownStore.deleteCountdown(countdown);
  }
}
