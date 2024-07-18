import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            // define color for answer
            var answerColor = (data['user_answer'] == data['correct_answer'])
                ? Colors.teal
                : Colors.pink;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   ((data['question_index'] as int) + 1).toString(),
                // ),
                Container(
                  alignment: Alignment.center,
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: answerColor,
                  ),
                  child: Text(((data['question_index'] as int) + 1).toString()),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(color: answerColor),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Correct answer : ${data['correct_answer'] as String}',
                        style: const TextStyle(color: Colors.orange),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
