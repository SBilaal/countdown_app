// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:countdown_app/core/utils.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/centered_add_button.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/countdow_menu.dart';
import 'package:countdown_app/features/add_countdown/presentation/widgets/countdown_item.dart';
import 'package:countdown_app/features/add_countdown/presentation/bloc/add_countdown_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventsScreen extends StatefulWidget {
  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  bool hasCountdown = false;

  @override
  void initState() {
    super.initState();
    context.read<AddCountdownBloc>().add(AppStarted());
  }

  @override
  Widget build(BuildContext context) {
    final countdownListNotEmpty = context
        .watch<AddCountdownBloc>()
        .state
        .addCountdown
        .countdownList
        .isNotEmpty;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Countdowns'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cloud,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.palette,
              color: Colors.grey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
      body:
          !countdownListNotEmpty ? CenteredAddButton() : _buildCountdownList(),
      floatingActionButton: _buildFAB(countdownListNotEmpty, context),
    );
  }

  Widget _buildCountdownList() => BlocBuilder<AddCountdownBloc, CountdownState>(
        builder: (context, state) {
          if (state is CountdownLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                var countdown = state.addCountdown.countdownList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            CountdownMenu(selectedIndex: index),
                      );
                    },
                    child: CountdownItem(
                      time: TimeOfDay.fromDateTime(countdown.date),
                      date: countdown.date,
                      title: countdown.title,
                      color: getColorFromIndex(countdown.colorIndex),
                    ),
                  ),
                );
              },
              itemCount: state.addCountdown.countdownList.length,
            );
          }
        },
      );

  Widget _buildFAB(bool countdownListNotEmpty, BuildContext context) {
    return Visibility(
      visible: countdownListNotEmpty,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/edit_screen');
          context.read<AddCountdownBloc>().add(AppStarted());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
