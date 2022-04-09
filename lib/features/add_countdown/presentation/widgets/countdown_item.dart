// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

class CountdownItem extends StatefulWidget {
  final Color color;
  final String title;
  final DateTime date;
  final TimeOfDay time;

  const CountdownItem(
      {required this.color,
      required this.title,
      required this.date,
      required this.time});

  @override
  State<CountdownItem> createState() => _CountdownItemState();
}

class _CountdownItemState extends State<CountdownItem> {
  Color get textColor {
    if (widget.color == Colors.yellow ||
        widget.color == Colors.orangeAccent ||
        widget.color == Colors.purple.shade100) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  late Duration durationLeft;
  late bool isDurationLeftZero = durationLeft.inSeconds == 0;

  Duration getDurationLeft() {
    var dLeft = DateTime(widget.date.year, widget.date.month, widget.date.day,
            widget.time.hour, widget.time.minute)
        .difference(DateTime.now());
    if (dLeft.inSeconds < 0) {
      dLeft = Duration(seconds: 0);
    }
    return dLeft;
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      durationLeft = getDurationLeft();
      if (mounted && !isDurationLeftZero) {
        setState(() {});
      }
      isDurationLeftZero = durationLeft.inSeconds == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    durationLeft = getDurationLeft();
    return Container(
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          FlutterLogo(
            size: 48,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
              if (!isDurationLeftZero)
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: textColor,
                    ),
                    children: [
                      TextSpan(
                        text: '${durationLeft.inDays} ',
                        style: TextStyle(color: textColor, fontSize: 26),
                      ),
                      TextSpan(text: 'days, ', style: TextStyle(fontSize: 22)),
                      TextSpan(
                        text: '${durationLeft.inHours % 24} ',
                        style: TextStyle(color: textColor, fontSize: 26),
                      ),
                      TextSpan(text: 'hours,', style: TextStyle(fontSize: 22)),
                    ],
                  ),
                ),
              if (isDurationLeftZero)
                Text(
                  'It\'s Over!',
                  style: TextStyle(color: textColor, fontSize: 18),
                ),
              if (!isDurationLeftZero)
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: textColor,
                    ),
                    children: [
                      TextSpan(
                        text: '${durationLeft.inMinutes % 60} ',
                        style: TextStyle(color: textColor, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'minutes, ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: '${durationLeft.inSeconds % 60} ',
                        style: TextStyle(color: textColor, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'seconds',
                        style: TextStyle(
                          fontSize: 16,
                          color: textColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
