import 'package:flutter/material.dart';
import '../Widgets/Quiz.dart';
import '../Widgets/Result.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'From where do you belong?',
      'answers': [
        {'text': 'Punjab', 'score': 5},
        {'text': 'Sindh', 'score': 5},
        {'text': 'Balochistan', 'score': 5},
        {'text': 'KPK', 'score': 5},
      ],
    },
    {
      'questionText': 'East or West, who is the best?',
      'answers': [
        {'text': 'Sufi', 'score': 1},
        {'text': 'Muneeb', 'score': 1},
        {'text': 'Sufi Muneeb', 'score': 1},
        {'text': 'Muneeb Sufi', 'score': 1},
      ],
    },
  ];

  int _finalScore = 0;
  int _questionIndex = 0;

  void _ResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _AnswerSelected(int score) {
    _finalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.blue.shade700,
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _AnswerSelected,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_finalScore, _ResetQuiz));
  }
}
