import 'package:countdown_app/core/response.dart';
import 'package:countdown_app/features/add_countdown/data/datasources/countdown_local_store.dart';
import 'package:countdown_app/features/add_countdown/data/datasources/countdown_remote_store.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class CountdownRepository {
  final CountdownLocalStore countdownStore;
  final CountdownRemoteStore remoteStore;

  ValueListenable get localStoreListenable =>
      countdownStore.countdownListenable;

  CountdownRepository(
      {required this.remoteStore, required this.countdownStore});

  Stream<Response<List<Countdown>>> getAllCountdowns() async* {
    yield* countdownStore.getAllCountdowns().map((countdowns) {
      print(countdowns.map((e) => e.title).toList());
      return Response.success(data: countdowns);
    });
    // return remoteStore.getCountdowns();
  }

  Future<Response> addCountdown(Countdown countdown) async {
    await countdownStore.addCountdown(countdown);
    return const Response.success();
  }

  Future<Response> updateCountdown(Countdown countdown) async {
    await countdownStore.updateCountdown(countdown);
    return const Response.success();
  }

  Future<Response> deleteCountdown(Countdown countdown) async {
    await countdownStore.deleteCountdown(countdown);
    return const Response.success();
  }
}
