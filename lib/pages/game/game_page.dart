import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle_clone/di/init_get_it.dart';
import 'package:wordle_clone/pages/game/bloc/game_bloc.dart';
import 'package:wordle_clone/pages/game/game_board.dart';
import 'package:wordle_clone/utils/constants.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GameBloc>(),
      child: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.bg,
            body: Column(
              children: [
                Spacer(),
                GameBoard(
                  solution: state.solution,
                  guesses: state.guesses,
                  usedKeys: state.usedKeys,
                  wrongGuessShake: state.wrongGuessShake,
                  currentGuessIndex: state.currentGuessIndex,
                  handleGuess: (keyPressed) =>
                      context.read<GameBloc>().add(HandleGuess(keyPressed)),
                  resetGame: () => context.read<GameBloc>().add(
                        ResetGame(),
                      ),
                ),
                Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
