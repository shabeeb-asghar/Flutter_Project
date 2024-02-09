import 'package:flutter/material.dart';
import 'package:roll_a_dic/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.Start, this.End, {super.key});

  final Color Start;
  final Color End;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Start, End],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
