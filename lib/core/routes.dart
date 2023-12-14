// ignore_for_file: prefer_const_constructors

import 'package:countdown_app/features/add_countdown/presentation/pages/countdown_form_page.dart';
import 'package:countdown_app/features/add_countdown/presentation/pages/countdown_overview_page.dart';

final routes = {
  '/': (context) => CountdownOverviewPage(),
  CountdownFormPage.name: (context) => CountdownFormPage(),
};
