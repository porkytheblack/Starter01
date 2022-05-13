// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_element

import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:starter01/result.dart';

import "./quiz.dart";

// void main() {
//   runApp(const StarterApp());
// }
void main() => runApp(StarterApp());

class StarterApp extends StatefulWidget {
  const StarterApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StarterAppState();
  }
}

class _StarterAppState extends State<StarterApp> {
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': "What is your Favourite color?",
      'answers': [
        {"text": "Black", "score": 8},
        {"text": "Red", "score": 3},
        {"text": "Green", "score": 2},
        {"text": "White", "score": 5}
      ]
    },
    {
      'questionText': "What is your Favourite animal?",
      'answers': [
        {"text": "Rabit", "score": 3},
        {"text": "Snake", "score": 9},
        {"text": "Elephant", "score": 10},
        {"text": "Lion", "score": 2}
      ]
    },
    {
      'questionText': "Who is your favourite instructor?",
      'answers': [
        {"text": "Max", "score": 9},
        {"text": "Max", "score": 9},
        {"text": "Max", "score": 12}
      ]
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    if (kDebugMode) {
      print("Button clicked 👋");
    }
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final -> is a runtime constant value
    //const -> compile time constant

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("StarterApp01")),
      body: _questionIndex < _questions.length
          ? Quiz(qns: _questions, ans: _answerQuestion, qnIndex: _questionIndex)
          : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
    ));
  }
}
