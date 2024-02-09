import 'package:quizup/data/question_data.dart';
import 'package:quizup/questions_screen.dart';
import 'package:quizup/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:quizup/results_screen.dart';

class QuizUp extends StatefulWidget {
  const QuizUp({super.key});

  @override
  State<QuizUp> createState() {
    return _QuizUpState();
  }
}

class _QuizUpState extends State<QuizUp> {
  int activeScreen = 1;
  final List<String> Answers = [];
  void SwitchScreen() {
    setState(() {
      activeScreen = 2;
    });
  }

  void ChooseAnswer(String Answer) {
    Answers.add(Answer);
    if (Answers.length == questions.length) {
      setState(() {
        activeScreen = 3;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      Answers.clear();
      activeScreen = 2;
    });
  }

  @override
  Widget build(context) {
    Widget Current_Screen = StartScreen(SwitchScreen);
    if (activeScreen == 2) {
      Current_Screen = Questions(
        onTapAnswer: ChooseAnswer,
      );
    } else if (activeScreen == 3) {
      Current_Screen = ResultsScreen(
        ChosenAnswers: Answers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Current_Screen,
        ),
      ),
    );
  }
}
