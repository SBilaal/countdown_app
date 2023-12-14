import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:countdown_app/features/add_countdown/data/datasources/countdown_local_store.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CountdownInjectableModule {
  @lazySingleton
  CountdownLocalStore get localStore => CountdownLocalStore.instance;
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
}
