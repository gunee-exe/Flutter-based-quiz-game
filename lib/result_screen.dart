import 'data/questions.dart';
import 'package:flutter/material.dart';
import 'questionsSummary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.restart(), this.answers, {super.key});
  void Function() restart;
  final List<String> answers;

  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < answers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': answers[i],
      });
    }
    return summary;
  }

  Widget build(context) {
    final summarydata = getsummarydata();
    final totalquestions = questions.length;
    final correctquestions = summarydata.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    }).length;

    return Container(
      margin: EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'You Answered $correctquestions out of $totalquestions questions correctly!',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Questionssummary(getsummarydata()),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(onPressed: restart, label: Text('Restart'), icon: Icon(Icons.refresh_outlined) ),
        ],
      ),
    );
  }
}
