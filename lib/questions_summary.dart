import 'package:adv_basics/question_number.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var color = data['answer'] == data['user_answer']
                ? const Color.fromARGB(255, 159, 214, 161)
                : const Color.fromARGB(255, 180, 110, 105);
            return Row(children: [
              QuestionNumber(data, color),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question'] as String),
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        (data['user_answer'] as String),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 192, 109, 207)),
                      ),
                      Text(
                        (data['answer'] as String),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 91, 158, 213)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
