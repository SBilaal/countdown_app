import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bloc/add_countdown_bloc.dart';

class DateAndTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AddCountdownBloc, CountdownState>(
        builder: (context, state) {
          var currentState = state.addCountdown;
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: currentState.eventDate,
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2100))
                        .then((selectedDate) {
                      context.read<AddCountdownBloc>().add(
                          CountdownDateSelected(
                              date: selectedDate ?? currentState.eventDate));
                    });
                  },
                  child: Text(
                    !currentState.isDateSelected
                        ? 'Choose a date...'
                        : DateFormat.yMMMd().format(currentState.eventDate),
                    style: TextStyle(
                        fontSize: 24,
                        color: currentState.isDateSelected
                            ? Colors.black
                            : Colors.grey.shade400,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                // decoration: BoxDecoration(border: Border(left: BorderSide(width: 1, color: Colors.grey))),
                width: 1,
                color: Colors.grey.shade400,
                height: 40,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () async {
                  var eventTime = await showTimePicker(
                          context: context,
                          initialTime: currentState.eventTime) ??
                      currentState.eventTime;

                  context.read<AddCountdownBloc>().add(
                        CountdownTimeSelected(time: eventTime),
                      );
                },
                child: Text(
                  !currentState.isDateSelected
                      ? 'Time'
                      : currentState.isTimeSelected
                          ? currentState.eventTime.format(context)
                          : 'All Day',
                  style: TextStyle(
                      fontSize: 24,
                      color: currentState.isDateSelected
                          ? Colors.black
                          : Colors.grey.shade400,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          );
        },
      );
}