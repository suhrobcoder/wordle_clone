import 'package:flutter/material.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/utils/constants.dart';

class LetterSquare extends StatelessWidget {
  const LetterSquare({
    super.key,
    required this.guess,
    required this.letter,
    required this.id,
  });

  final Guess guess;
  final String letter;
  final int id;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 6.5;
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppColors.getColorByMatch(guess.matches[id]),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: guess.isComplete ? 0 : 1),
      ),
      child: Center(
        child: Text(
          letter.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
