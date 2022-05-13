// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? selectHandler;
  String? answerText;
  Answer({Key? key, this.selectHandler, this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      onPressed: selectHandler,
      color: Colors.blue,
      child: Text(answerText!),
      textColor: Colors.white,
    ));
  }
}
