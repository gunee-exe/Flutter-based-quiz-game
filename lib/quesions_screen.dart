import 'package:flutter/material.dart';
import 'models/answerbutton.dart';
import 'data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[0];
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min,
        children: [
          Text(currentquestion.text, style: TextStyle(color: Colors.black, fontSize: 20,),),
          SizedBox(
            height: 30,
          ),
         ...currentquestion.answers.map((answers){
          return AnswerButtonDisplay(answers, (){});
         })
        ],
      ),
    );
  }
}
