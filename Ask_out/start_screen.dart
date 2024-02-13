import 'package:flutter/material.dart';
import 'package:ask_her_out/size_increaser.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.OnPressed_Yes, {super.key});
  final void Function() OnPressed_Yes;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Will you go out with me?',
            style: TextStyle(
              color: Color.fromARGB(255, 233, 77, 88),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/gifs/start.gif'),
          const SizedBox(
            height: 20,
          ),
          SizeIncreaser(OnPressed_Yes),
        ],
      ),
    );
  }
}
