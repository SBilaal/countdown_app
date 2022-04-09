// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:countdown_app/features/add_countdown/presentation/widgets/countdown_item.dart';
import 'package:countdown_app/features/add_countdown/utils.dart';
import 'package:countdown_app/features/add_countdown/presentation/bloc/add_countdown_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventsScreen extends StatelessWidget {
  bool hasCountdown = false;

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
      body: !countdownListNotEmpty
          ? CenteredAddButton()
          : BlocBuilder<AddCountdownBloc, CountdownState>(
              builder: (context, state) => ListView.builder(
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
              ),
            ),
      floatingActionButton: Visibility(
        visible: countdownListNotEmpty,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/edit_screen');
            context.read<AddCountdownBloc>().add(AppStarted());
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

class CountdownMenu extends StatelessWidget {
  final selectedIndex;
  CountdownMenu({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Birthday (3 April 2022)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          _buildMenuAction(
            text: 'Edit Countdown',
            action: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/edit_screen');
              context.read<AddCountdownBloc>().add(CountdownEditSelected(
                    countdownIndex: selectedIndex,
                  ));
            },
          ),
          _buildMenuAction(
            text: 'Share Countdown',
            action: () {},
          ),
          _buildMenuAction(
              text: 'Remove Countdown',
              action: () {
                context.read<AddCountdownBloc>().add(CountdownDeleteSelected(
                      countdownIndex: selectedIndex,
                    ));
                Navigator.pop(context);
              },
              isRemove: true),
          _buildMenuAction(
            text: 'Cancel',
            action: () {
                Navigator.pop(context);

            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuAction(
          {required String text,
          required Function() action,
          bool isRemove = false}) =>
      TextButton(
        onPressed: action,
        child: Text(
          text,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: isRemove ? Colors.red : Colors.black,
          alignment: Alignment.centerLeft,
        ),
      );
}

class CenteredAddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {
              context.read<AddCountdownBloc>().add(AppStarted());
              Navigator.pushNamed(context, '/edit_screen');
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                fixedSize: Size(70, 70),
                shape: CircleBorder()),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Tap here to add your first event',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
