// ignore_for_file: prefer_const_constructors

import 'package:countdown_app/features/add_countdown/presentation/bloc/add_countdown_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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