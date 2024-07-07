import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text((int.parse(data['question'] as String) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question_index'] as String,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_ans'] as String),
                      Text(data['correct_ans'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
