// ignore_for_file: prefer_const_constructors

import 'package:countdown_app/features/add_countdown/presentation/countdown_form/bloc/countdown_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IconSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.read<CountdownFormBloc>().add(
                      CountdownFormEvent.iconSelected(iconIndex: index),
                    );
              },
              child: BlocBuilder<CountdownFormBloc, CountdownFormState>(
                builder: (context, state) => Visibility(
                    visible: state.countdown.iconIndex == index,
                    child: Container(
                      // padding: EdgeInsets.all(5),
                      // margin: EdgeInsets.all(2),
                      constraints: BoxConstraints.loose(Size(60, 60)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.5),
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5)),
                      child: FlutterLogo(
                        size: 50,
                        duration: Duration(milliseconds: 250),
                      ),
                    ),
                    replacement: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(),
                      child: FlutterLogo(
                        size: 48,
                      ),
                    )),
              ),
            );
          },
          itemCount: 10,
        ),
      );
}