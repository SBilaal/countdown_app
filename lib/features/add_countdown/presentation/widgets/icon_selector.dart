import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/add_countdown_bloc.dart';

class IconSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.read<AddCountdownBloc>().add(
                      CountdownIconSelected(iconIndex: index),
                    );
              },
              child: BlocBuilder<AddCountdownBloc, CountdownState>(
                builder: (context, state) => Visibility(
                    visible: state.addCountdown.selectedIconIndex == index,
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