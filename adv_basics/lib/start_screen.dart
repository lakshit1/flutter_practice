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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            height: 300,
            color: Colors.white60,
            'assets/images/quiz-logo.png',
          ),
          CustomText('Learn Flutter the Fun Way!'),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purpleAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  CustomText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
        style: GoogleFonts.lato(
          color: Colors.white70,
          fontSize: 25,
        ),
        text);
  }
}

// class CustomElevatedButton extends StatelessWidget {
//   Null Function() onPressed;
//   String text = 'Start';

//   CustomElevatedButton({
//     required this.onPressed,
//     required this.text,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.purpleAccent,
//         foregroundColor: Colors.white,
//       ),
//       onPressed: onPressed,
//       icon: const Icon(Icons.arrow_right_alt),
//       label: Text(
//         text,
//       ),
//     );
//   }
// }
