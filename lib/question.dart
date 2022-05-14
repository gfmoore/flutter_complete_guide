import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Question({Key? key}) : super(key: key);

  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity, 
      margin: const EdgeInsets.all(10.0),
      child: Text(questionText,
        style: const TextStyle(fontSize: 28), 
        textAlign: TextAlign.center,
      ),
    );
  }
}
