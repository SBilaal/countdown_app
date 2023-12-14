// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:countdown_app/auth/bloc/auth_bloc.dart';
import 'package:countdown_app/core/routes.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:countdown_app/features/add_countdown/data/repositories/countdown_repository.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_actor/bloc/countdown_actor_bloc.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_reader/countdown_reader_bloc.dart';
import 'package:countdown_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(CountdownAdapter());
  await Hive.openBox('countdown');
  configureDependencies();
  
  SentryFlutter.init(
    (option) {
      option..dsn = 'https://2d78b6ad52605a3a2d38f6917b053360@o4506075948974080.ingest.sentry.io/4506082189705216'
      ..tracesSampleRate = 1.0
      ..sendDefaultPii = true
      ..attachScreenshot = true;
    },
    appRunner: () => runApp(SentryScreenshotWidget(child: SentryUserInteractionWidget(child: MyApp()))),
  );
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc()..add(AuthEvent.authCheckRequested()),
          ),
          BlocProvider(create: (context) => CountdownReaderBloc(getIt<CountdownRepository>())..add(CountdownReaderEvent.readStarted())),
          BlocProvider(create: (context) => CountdownActorBloc(getIt<CountdownRepository>())),
          // BlocProvider(
          //     create: (context) =>
          //         CountdownFormBloc(getIt<CountdownRepository>())),
        ],
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
