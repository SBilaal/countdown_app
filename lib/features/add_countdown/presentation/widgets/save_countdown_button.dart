import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/add_countdown_bloc.dart';

class SaveCountdownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AddCountdownBloc, CountdownState>(
        builder: (context, state) {
          var isDateSelected = state.addCountdown.isDateSelected;
          return ElevatedButton(
            onPressed: isDateSelected
                ? () {
                    state.addCountdown.isEditingCountdown ? context.read<AddCountdownBloc>().add(
                          CountdownUpdated(),
                        ) : context.read<AddCountdownBloc>().add(
                          CountdownSaved(),
                        );
                    Navigator.pop(context);
                  }
                : null,
            child: Text(
              '${state.addCountdown.isEditingCountdown ? 'Update' : 'Save'} Countdown',
              style: TextStyle(
                  fontSize: 18,
                  color: isDateSelected ? Colors.white : Colors.white38,
                  fontWeight: FontWeight.w400),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Theme.of(context).primaryColor.withOpacity(0.6);
                  }
                  return null;
                },
              ),
            ),
          );
        },
      );
}