// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  Question({Key? key, this.questionText}) : super(key: key);
  String? questionText;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText!,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
