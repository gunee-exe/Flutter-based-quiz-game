import 'package:flutter/material.dart';

class AnswerButtonDisplay extends StatelessWidget {
  const AnswerButtonDisplay(this.answer, this.ontap, {super.key});
  final String answer;
  final void Function() ontap;
  @override
  Widget build(context) {
    return 
     ElevatedButton.icon(
        onPressed: ontap,
        label: Text(
          answer,
          textAlign: TextAlign.center,
        ),
        icon: Icon(
          Icons.circle_outlined,
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 3, 76, 144),
        ),
      );
   
  }
}
