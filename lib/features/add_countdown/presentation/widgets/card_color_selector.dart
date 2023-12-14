import 'package:countdown_app/core/utils.dart';
import 'package:countdown_app/features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CardColorSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.read<CountdownFormBloc>().add(
                      CountdownFormEvent.colorSelected(colorIndex: index),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: BlocBuilder<CountdownFormBloc, CountdownFormState>(
                  builder: (context, state) => Visibility(
                    visible: state.countdown.colorIndex == index,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 17.5,
                        backgroundColor: getColorFromIndex(index),
                      ),
                    ),
                    replacement: CircleAvatar(
                      radius: 20,
                      backgroundColor: getColorFromIndex(index),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: kColors.length,
        ),
      );
}