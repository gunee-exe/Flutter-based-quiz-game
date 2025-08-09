import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/answerbutton.dart';
import 'data/questions.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelectanswer,{super.key});
  final void Function (String answer) onSelectanswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentquestionnumber = 0;
 
  void answerquestion(String selectedanswer) {
 widget.onSelectanswer(selectedanswer);
    setState(() {
      
      currentquestionnumber++;
    });
  }
  

  @override
   
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionnumber];
    return Center(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.rubik(
                color: Colors.black,
                fontSize: 18,
            
              fontWeight: FontWeight.bold
              ),
              //textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            ...currentquestion.getshuffledanswers().map((answers) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: AnswerButtonDisplay(answers, (){
                  answerquestion(answers);
                }),
              );
            }),
          ],
        ),
      ),
    );
  }
}
