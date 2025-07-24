import 'package:flutter/material.dart';
import 'package:flutter_application_1/quesions_screen.dart';
import 'home_screen.dart';

class Quiz extends StatefulWidget {
 const Quiz ({super.key});
  @override
  State<Quiz> createState() {return _QuizState();}
}

class _QuizState extends State<Quiz> {
  Widget? ActiveScreen ;
  @override
  void initState() {
     ActiveScreen = StartScreen(switchscreen);
    super.initState();
  }
  void switchscreen(){
    setState(() {
      ActiveScreen = QuestionScreen();
    });
  }
  @override
  Widget build( context) {
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
        child:  ActiveScreen
      ),
    )
    );
   
  }
}
