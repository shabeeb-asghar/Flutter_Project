import 'package:flutter/material.dart';
import 'package:quizup/summary_item.dart';

class ResultsSummary extends StatelessWidget {
  const ResultsSummary(this.Data, {super.key});
  final List<Map<String, Object>> Data;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: Data.map((item) {
            return SummaryItem(item);
          }).toList(),
        ),
      ),
    );
  }
}
