// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:countdown_app/core/utils.dart';
import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/card_color_selector.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/countdown_item.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/create_countdown_form_button.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/date_and_time_picker.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/icon_selector.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/save_countdown_button.dart';
import 'package:countdown_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountdownFormPage extends StatefulWidget {
  static const name = '/edit_screen';

  const CountdownFormPage({Key? key}) : super(key: key);

  @override
  State<CountdownFormPage> createState() => _CountdownFormPageState();
}

class _CountdownFormPageState extends State<CountdownFormPage> {
  final _titleEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final countdown = ModalRoute.of(context)!.settings.arguments as Countdown?;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new countdowns'),
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<CountdownFormBloc>()
          ..add(CountdownFormEvent.initialized(countdown)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What are you counting down to?',
                    style: TextStyle(fontSize: 18),
                  ),
                  BlocConsumer<CountdownFormBloc, CountdownFormState>(
                    listenWhen: (previous, current) => previous.isEditing != current.isEditing,
                    listener: (context, state) => _titleEditingController.text = state.countdown.title,
                    builder: (context, state) {
                      return TextFormField(
                        key: const ValueKey('CountdownTitleKey'),
                        controller: _titleEditingController,
                        autofocus: !state.isEditing,
                        cursorHeight: 30,
                        cursorColor: Colors.green.shade200,
                        style: TextStyle(fontSize: 24),
                        onChanged: (value) {
                          context.read<CountdownFormBloc>().add(
                              CountdownFormEvent.titleChanged(title: value));
                        },
                        decoration: InputDecoration(border: InputBorder.none),
                      );
                    },
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<CountdownFormBloc, CountdownFormState>(
                    builder: (context, state) {
                      // var currentState = state.addCountdown;
                      return Visibility(
                        visible: state.countdown.title.isNotEmpty &&
                            !state.isFormButtonPressed,
                        replacement: !state.isFormButtonPressed
                            ? SizedBox.shrink()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'When is it happening?',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  DateAndTimePicker(),
                                  Divider(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Choose an icon',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Spacer(),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See all icons >',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                  IconSelector(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Choose a background color',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  CardColorSelector(),
                                  Text(
                                    'Here is what it looks like',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  if (state.isDateSelected)
                                    CountdownItem(
                                      time: TimeOfDay.fromDateTime(
                                          state.countdown.date),
                                      date: state.countdown.date,
                                      title: state.countdown.title,
                                      color: getColorFromIndex(
                                        state.countdown.colorIndex,
                                      ),
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: SaveCountdownButton(),
                                  ),
                                ],
                              ),
                        child: CreateCountdownFormButton(),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
