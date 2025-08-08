import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'The CricQuiz',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'asset/quiz-logo.png',
            height: 275,
            width: 275,
            //color: const Color.fromARGB(255, 202, 195, 7)
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            'Test your cricket IQ, ball by ball.',
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 239, 248, 0),
            ),
          ),
         ElevatedButton.icon(
  onPressed: startquiz,
  label: Text(
    'Start the quiz',
    style: TextStyle(color: Colors.white), // Text color
  ),
  icon: Icon(Icons.arrow_right_alt_rounded, color: Colors.white), // Icon color
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF002754)
, 
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Bigger tap area
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // Rounded corners
    ),
  ),
),

        ],
      ),
    );
  }
}
