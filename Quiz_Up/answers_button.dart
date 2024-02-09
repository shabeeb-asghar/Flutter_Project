import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.AnswerText, required this.OnTap});
  final String AnswerText;
  final void Function() OnTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: OnTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        ),
        child: Text(
          AnswerText,
          textAlign: TextAlign.center,
        ));
  }
}
