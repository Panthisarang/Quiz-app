import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/assets/images/quiz-logo.png',
            width: 300,
            color: Colors.deepPurple[300],
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.poppins(
              color: Colors.deepPurple[100],
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepPurple[100]),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
