import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 195, 165, 216),
                fontSize: 24,
              ),
              'Learn Flutter the fun way!'),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Icon(
                Icons.ads_click), //label as icon to make icon right sided
            icon: const Text('Start Quiz'), //
          )
        ],
      ),
    );
  }
}
