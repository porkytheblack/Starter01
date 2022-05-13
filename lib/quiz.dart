import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>>? qns;
  final Function? ans;
  final int? qnIndex;
  const Quiz({Key? key, required this.qns, required this.ans, required this.qnIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(questionText: qns?[qnIndex!]["questionText"]),
            ...(qns?[qnIndex!]["answers"] as List<Map<String, dynamic>>)
                .map((currentElement) {
              return Answer(
                selectHandler:()=> ans!(currentElement["score"]),
                answerText: currentElement["text"],
              );
            }).toList()
          ],
        ),
      ],
    );
  }
}
