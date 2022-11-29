import 'package:flutter/material.dart';
import 'package:wordle_clone/components/letter_square.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/pages/game/keyboard.dart';
import 'package:wordle_clone/utils/constants.dart';
import 'package:wordle_clone/utils/list_ext.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({
    super.key,
    required this.solution,
    required this.guesses,
    required this.usedKeys,
    required this.handleGuess,
    required this.resetGame,
  });

  final String solution;
  final List<Guess> guesses;
  final MatchingUsedKey usedKeys;
  final void Function(String) handleGuess;
  final void Function() resetGame;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bg,
      child: Column(
        children: [
          ...guesses
              .map((guess) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: guess.letters
                        .mapIndexed((letter, index) => LetterSquare(
                              guess: guess,
                              letter: letter,
                              id: index,
                            ))
                        .toList(),
                  ))
              .toList(),
          Keyboard(
            usedKeys: usedKeys,
            keyPressed: handleGuess,
          ),
          ElevatedButton(
              onPressed: () => handleGuess("Enter"), child: Text("Enter")),
        ],
      ),
    );
  }
}
