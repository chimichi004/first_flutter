import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Football', 'score': 1},
        {'text': 'Volleyball', 'score': 3},
        {'text': 'Basketball', 'score': 4},
        {'text': 'Baseball', 'score': 7},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 1},
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Rat', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your color?',
      'answers': [
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 6},
      ]
    },
  ];

  void _answerQuestion(int score) {
    //Todo
    _totalScore += score;

    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
