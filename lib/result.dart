// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    return 'Your score is $resultScore points!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          ElevatedButton(
            child: const Text('Restart Quiz!', style: TextStyle(fontSize: 20)),
            onPressed: resetHandler,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 195, 240, 143)),
              foregroundColor: MaterialStateProperty.all(Colors.red),
            ),
          )

        ],
      ),
    );
  }
}
