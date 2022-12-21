import 'package:flutter/material.dart';
import 'package:wordle_clone/components/letter_square.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/pages/game/keyboard.dart';
import 'package:wordle_clone/utils/list_ext.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({
    super.key,
    required this.solution,
    required this.guesses,
    required this.usedKeys,
    required this.wrongGuessShake,
    required this.currentGuessIndex,
    required this.handleGuess,
    required this.resetGame,
  });

  final String solution;
  final List<Guess> guesses;
  final MatchingUsedKey usedKeys;
  final bool wrongGuessShake;
  final int currentGuessIndex;
  final void Function(String) handleGuess;
  final void Function() resetGame;

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.guesses
            .map((guess) => AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) => Transform.translate(
                    offset: Offset(
                        widget.wrongGuessShake &&
                                widget.currentGuessIndex == guess.id
                            ? (_controller.value - 0.5) * 20
                            : 0,
                        0),
                    child: child,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: guess.letters
                          .mapIndexed((letter, index) => LetterSquare(
                                guess: guess,
                                letter: letter,
                                id: index,
                              ))
                          .toList(),
                    ),
                  ),
                ))
            .toList(),
        const SizedBox(height: 20),
        Keyboard(
          usedKeys: widget.usedKeys,
          keyPressed: widget.handleGuess,
        ),
      ],
    );
  }
}
