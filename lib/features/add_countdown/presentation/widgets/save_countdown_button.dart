import 'package:countdown_app/features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_reader/countdown_reader_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveCountdownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CountdownFormBloc, CountdownFormState>(
        builder: (context, state) {
          var isDateSelected = state.isDateSelected;
          return ElevatedButton(
            key: const ValueKey("SaveCountdownButton"),
            onPressed: isDateSelected
                ? () {
                    context
                        .read<CountdownFormBloc>()
                        .add(const CountdownFormEvent.saved());
                    Navigator.pop(context);
                    context
                      .read<CountdownReaderBloc>()
                      .add(const CountdownReaderEvent.readStarted());
                  }
                : null,
            child: Text(
              '${state.isEditing ? 'Update' : 'Save'} Countdown',
              style: TextStyle(
                  fontSize: 18,
                  color: isDateSelected ? Colors.white : Colors.white38,
                  fontWeight: FontWeight.w400),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
