// ignore_for_file: prefer_const_constructors

import 'package:countdown_app/features/add_countdown/domain/entities/countdown.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_actor/bloc/countdown_actor_bloc.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_reader/countdown_reader_bloc.dart';
import 'package:countdown_app/features/add_countdown/presentation/pages/countdown_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CountdownActionMenu extends StatelessWidget {
  final Countdown countdown;
  const CountdownActionMenu({required this.countdown});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('${countdown.title} (${DateFormat('d MMM yyyy').format(countdown.date)})',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          Builder(builder: (context) {
            return _buildMenuAction(
              text: 'Edit Countdown',
              action: () {
                Navigator.of(context).pushReplacementNamed(CountdownFormPage.name, arguments: countdown);
                // context
                //     .read<CountdownFormBloc>()
                //     .add(CountdownFormEvent.initialized(countdown));
              },
            );
          }),
          _buildMenuAction(
            text: 'Share Countdown',
            action: () {},
          ),
          _buildMenuAction(
              text: 'Remove Countdown',
              action: () {
                context.read<CountdownActorBloc>().add(CountdownActorEvent.deletedTapped(countdown));
                context.read<CountdownReaderBloc>().add(const CountdownReaderEvent.readStarted());
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

  Widget _buildMenuAction({required String text, required Function() action, bool isRemove = false}) => TextButton(
        onPressed: action,
        child: Text(
          text,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        style: TextButton.styleFrom(
          foregroundColor: isRemove ? Colors.red : Colors.black,
          padding: EdgeInsets.zero,
          alignment: Alignment.centerLeft,
        ),
      );
}
