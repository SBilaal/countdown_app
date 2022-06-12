// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:countdown_app/core/utils.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/card_color_selector.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/countdown_item.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/create_countdown_form_button.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/date_and_time_picker.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/icon_selector.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/save_countdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/add_countdown_bloc.dart';

class EditScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new countdowns'),
        elevation: 0,
      ),
      body: SafeArea(
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
                TextFormField(
                  initialValue: context.read<AddCountdownBloc>().state.addCountdown.title,
                  autofocus: !context.watch<AddCountdownBloc>().state.addCountdown.isFormButtonPressed,
                  cursorHeight: 30,
                  cursorColor: Colors.green.shade200,
                  style: TextStyle(fontSize: 24),
                  onChanged: (value) {
                    context
                        .read<AddCountdownBloc>()
                        .add(CountdownTitleChanged(title: value));
                  },
                  decoration: InputDecoration(border: InputBorder.none),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                BlocBuilder<AddCountdownBloc, CountdownState>(
                  builder: (context, state) {
                    var currentState = state.addCountdown;
                    return Visibility(
                      visible: currentState.title.isNotEmpty &&
                          !currentState.isFormButtonPressed,
                      replacement: !currentState.isFormButtonPressed
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
                                if (state.addCountdown.isDateSelected)
                                  CountdownItem(
                                      time: state.addCountdown.eventTime,
                                      date: state.addCountdown.eventDate,
                                      title: state.addCountdown.title,
                                      color: getColorFromIndex(state
                                          .addCountdown.selectedColorIndex)),
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
    );
  }
}