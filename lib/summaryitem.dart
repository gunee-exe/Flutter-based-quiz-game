import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'resultsummary.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer ;
      if(itemData['chosen_answer'] == itemData['correct_answer'])  
      {
        isCorrectAnswer = true;
      }
      else {isCorrectAnswer=false;}

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                        itemData['question'] as String,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (itemData['chosen_answer']).toString(),
                      ),
                      Text(
                        (itemData['correct_answer']).toString(),
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
            ),
          ),
        ],
      ),
    );
  }
}