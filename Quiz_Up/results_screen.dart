import 'package:flutter/material.dart';
import 'package:quizup/data/question_data.dart';
import 'package:quizup/results_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.ChosenAnswers, required this.onRestart});
  final List<String> ChosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> Data = [];
    for (int i = 0; i < ChosenAnswers.length; i++) {
      Data.add({
        'Question_Index': i,
        'Question_Text': questions[i].Text,
        'Correct_Answer': questions[i].Answers[0],
        'User_Answer': ChosenAnswers[i],
      });
    }
    return Data;
  }

  @override
  Widget build(context) {
    final Data = getSummaryData();
    final TotalQuestions = questions.length;
    final CorrectQuestion = Data.where((item) {
      return item['User_Answer'] == item['Correct_Answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answere $CorrectQuestion out of $TotalQuestions questions correclty',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ResultsSummary(Data),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
