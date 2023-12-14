import 'package:countdown_app/features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DateAndTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocBuilder<CountdownFormBloc, CountdownFormState>(
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDatePicker(context: context, initialDate: state.countdown.date, firstDate: DateTime.now(), lastDate: DateTime(2100))
                        .then((selectedDate) {
                      context.read<CountdownFormBloc>().add(CountdownFormEvent.dateSelected(date: selectedDate ?? state.countdown.date));
                    });
                  },
                  child: Text(
                    !state.isDateSelected ? 'Choose a date...' : DateFormat.yMMMd().format(state.countdown.date),
                    style: TextStyle(fontSize: 24, color: state.isDateSelected ? Colors.black : Colors.grey.shade400, fontWeight: FontWeight.w300),
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
                  var eventTime = await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(state.countdown.date)) ??
                      TimeOfDay.fromDateTime(state.countdown.date);

                  context.read<CountdownFormBloc>().add(
                        CountdownFormEvent.timeSelected(time: eventTime),
                      );
                },
                child: Text(
                  !state.isDateSelected
                      ? 'Time'
                      : state.isTimeSelected
                          ? TimeOfDay.fromDateTime(state.countdown.date).format(context)
                          : 'All Day',
                  style: TextStyle(fontSize: 24, color: state.isDateSelected ? Colors.black : Colors.grey.shade400, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          );
        },
      );
}
