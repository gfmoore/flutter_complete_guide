// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer { Key? key }) : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(
          left: 30.0, top: 10.0, right: 30.0, bottom: 0.0),
      width: 300, //double.infinity,

      child: ElevatedButton(
        child: Text(answerText, style: const TextStyle(fontSize: 20)),
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 195, 240, 143)),
          foregroundColor: MaterialStateProperty.all(Colors.red),

          //or
          //style: ElevatedButtonStyle.styleFrom(
          //  primary: Colors.blue,
          //  onPrimary: Colors.white,
          //),

        ),

      ),

    );
  }
}
