// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(
      {Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "😁";
    } else if (resultScore >= 12) {
      resultText = "😡";
    } else {
      resultText = "😎😎😎";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetHandler, child: Text("Restart"))
        ],
      ),
    );
  }
}
