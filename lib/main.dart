// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:countdown_app/core/routes.dart';
import 'package:countdown_app/features/add_countdown/data/datasources/countdown_store.dart';
import 'package:countdown_app/features/add_countdown/data/models/countdown.dart';
import 'package:countdown_app/features/add_countdown/data/repositories/countdown_repository.dart';
import 'package:countdown_app/features/add_countdown/presentation/bloc/add_countdown_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  BlocOverrides.runZoned(() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CountdownAdapter());
    await Hive.openBox('countdown');

    runApp(MyApp());
  }, blocObserver: CountdownObserver());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        currentFocus.requestFocus(focusNode);
      },
      child: BlocProvider(
        create: (context) => AddCountdownBloc(
            CountdownRepository(countdownStore: CountdownStore.instance)),
        child: MaterialApp(
          title: 'Countdown App',
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
          ),
          initialRoute: '/',
          routes: routes,
        ),
      ),
    );
  }
}
