import 'package:flutter/material.dart';
import 'package:quizup/Size_Adjuster.dart';
import 'package:quizup/answers_button.dart';
import 'package:quizup/data/question_data.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onTapAnswer});
  final void Function(String) onTapAnswer;
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  int index = 0;
  void AnswerQuestion(String Answer) {
    widget.onTapAnswer(Answer);
    setState(() {
      index++;
    });
  }

  @override
  Widget build(context) {
    final CurrentQuestion = questions[index];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              CurrentQuestion.Text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 233, 252),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...CurrentQuestion.getShuffledAnswer().map(
              (i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(
                      AnswerText: i,
                      OnTap: () {
                        AnswerQuestion(i);
                      },
                    ),
                    SizeAdjuster(i),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
