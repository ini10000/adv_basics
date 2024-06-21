import 'package:flutter/material.dart';

class QuestionNumber extends StatefulWidget {
  const QuestionNumber(this.data, this.color, {super.key});

  final Map<String, Object> data;
  final Color color;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsNumberState();
  }
}

class _QuestionsNumberState extends State<QuestionNumber> {
  Color color = Colors.green;

  void answerQuestion(String selectedAnswer) {
    setState(() {
      color = widget.color;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
      padding: const EdgeInsets.all(8),
      child: Text(
        ((widget.data['question_index'] as int) + 1).toString(),
      ),
    );
  }
}
