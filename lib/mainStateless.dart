// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   var questionIndex = 0;

//   void answerQuestion() {
//     questionIndex = questionIndex + 1;
//     print(questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favorite sport?',
//       'What\'s your favorite animal?'
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: Column(
//           children: [
//             Text(
//               questions.elementAt(questionIndex),
//             ),
//             RaisedButton(
//               child: Text('Answer 1'),
//               onPressed: answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: answerQuestion,
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: answerQuestion,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }