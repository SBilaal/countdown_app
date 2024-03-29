// ignore_for_file: prefer_const_constructors

import 'package:countdown_app/features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCountdownFormButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CountdownFormBloc, CountdownFormState>(
        builder: (context, state) => ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.blue.shade100,
            padding: EdgeInsets.all(16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              SizedBox.fromSize(
                size: Size(10, 0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create a custom countdown for',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    state.countdown.title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          ),
          onPressed: () {
            FocusScope.of(context).unfocus();
            context.read<CountdownFormBloc>().add(
                  const CountdownFormEvent.countdownCreated()
                );
          },
        ),
      );
}
