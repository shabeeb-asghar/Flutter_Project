import 'package:flutter/material.dart';

class SizeAdjuster extends StatefulWidget {
  const SizeAdjuster(this.Answer, {super.key});
  final String Answer;
  @override
  State<SizeAdjuster> createState() {
    return _SizeAdjusterState();
  }
}

class _SizeAdjusterState extends State<SizeAdjuster> {
  double pixel = 0;
  @override
  Widget build(context) {
    if (widget.Answer.length > 33) {
      setState(() {
        pixel = 5.0;
      });
    }
    return SizedBox(
      height: pixel,
      width: double.infinity,
    );
  }
}
