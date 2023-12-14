// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network_checker.dart' as _i5;
import 'features/add_countdown/data/datasources/countdown_injectable_module.dart'
    as _i11;
import 'features/add_countdown/data/datasources/countdown_local_store.dart'
    as _i3;
import 'features/add_countdown/data/datasources/countdown_remote_store.dart'
    as _i6;
import 'features/add_countdown/data/repositories/countdown_repository.dart'
    as _i7;
import 'features/add_countdown/presentation/countdown_actor/bloc/countdown_actor_bloc.dart'
    as _i8;
import 'features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart'
    as _i9;
import 'features/add_countdown/presentation/countdown_reader/countdown_reader_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final countdownInjectableModule = _$CountdownInjectableModule();
  gh.lazySingleton<_i3.CountdownLocalStore>(
      () => countdownInjectableModule.localStore);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => countdownInjectableModule.firebaseFirestore);
  gh.factory<_i5.NetworkInfo>(() => _i5.NetworkInfo());
  gh.factory<_i6.CountdownRemoteStore>(() => _i6.CountdownRemoteStore(
      db: get<_i4.FirebaseFirestore>(), networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i7.CountdownRepository>(() => _i7.CountdownRepository(
      remoteStore: get<_i6.CountdownRemoteStore>(),
      countdownStore: get<_i3.CountdownLocalStore>()));
  gh.factory<_i8.CountdownActorBloc>(
      () => _i8.CountdownActorBloc(get<_i7.CountdownRepository>()));
  gh.factory<_i9.CountdownFormBloc>(
      () => _i9.CountdownFormBloc(get<_i7.CountdownRepository>()));
  gh.factory<_i10.CountdownReaderBloc>(
      () => _i10.CountdownReaderBloc(get<_i7.CountdownRepository>()));
  return get;
}

class _$CountdownInjectableModule extends _i11.CountdownInjectableModule {}
