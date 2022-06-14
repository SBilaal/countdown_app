// ignore_for_file: prefer_const_constructors

import 'package:countdown_app/features/add_countdown/presentation/bloc/add_countdown_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

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
