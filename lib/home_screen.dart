import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'My Quiz App',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Image.asset(
                'asset/quiz-logo.png',
                width: 200,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Start the quiz'),
                icon: Icon(Icons.arrow_right_alt_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
