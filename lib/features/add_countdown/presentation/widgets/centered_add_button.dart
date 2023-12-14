// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../pages/countdown_form_page.dart';

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
              Navigator.pushNamed(context, CountdownFormPage.name);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
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
