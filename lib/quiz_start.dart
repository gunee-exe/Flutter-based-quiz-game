import 'package:flutter/material.dart';
import 'package:flutter_application_1/quesions_screen.dart';
import 'home_screen.dart';
import 'data/questions.dart';
class Quiz extends StatefulWidget {
 const Quiz ({super.key});
  @override
  State<Quiz> createState() {return _QuizState();}
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswers =[];
  var ActiveScreen = 'home-screen' ;
  
  
  void switchscreen(){
    setState(() {
      ActiveScreen = 'Question-Screen';
      
    });
  }


  void chooseanswer (String answer){
    selectedanswers.add( answer);
    if(selectedanswers.length == questions.length)
    {
      setState(() {
        selectedanswers = [];
        ActiveScreen = 'home-screen';
      });
    }
  }
  @override
  Widget build( context) {
    Widget  currentscreen = StartScreen(switchscreen);
    if (ActiveScreen== 'Question-Screen')
    {
      currentscreen = QuestionScreen(chooseanswer);
    }

    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blueAccent,

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 30, 101, 223),
              Colors.blueAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child:  currentscreen
      ),
    )
    );
   
  }
}
