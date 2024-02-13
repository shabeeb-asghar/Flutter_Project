import 'package:flutter/material.dart';

class Yes extends StatelessWidget {
  const Yes({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Yaaayy!! see you tommorrow',
            style: TextStyle(
              color: Color.fromARGB(255, 233, 77, 88),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/gifs/yes.gif'),
        ],
      ),
    );
  }
}
