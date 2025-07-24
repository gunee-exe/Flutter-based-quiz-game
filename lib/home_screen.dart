import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz,{super.key});
  final void Function() startquiz;
  @override
  Widget build(context) {
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             const Text(
                'My Quiz App',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Image.asset(
                'asset/quiz-logo.png',
                height: 300,
                width: 300,
                color: const Color.fromARGB(123, 255, 255, 255)
              ),
              const SizedBox(
                height: 45,
              ),
               ElevatedButton.icon(
                onPressed: startquiz,
                label: Text('Start the quiz'),
                icon: Icon(Icons.arrow_right_alt_rounded),
              ),
            ],
          ),
        );
  }
}
