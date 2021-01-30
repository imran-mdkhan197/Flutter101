import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer2'),
            onPressed: () {
              print('Answer 2 Choosen');
            },
          ),
          RaisedButton(
            child: Text('Answer3'),
            onPressed: () => print('Answer 3 Choosen'),
          )
        ],
      ),
    ));
  }
}
