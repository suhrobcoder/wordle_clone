import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:wordle_clone/components/button.dart';
import 'package:wordle_clone/components/coin_widget.dart';
import 'package:wordle_clone/components/keyboard_button.dart';
import 'package:wordle_clone/components/power_up_btn.dart';
import 'package:wordle_clone/di/init_get_it.dart';
import 'package:wordle_clone/localizations.dart';
import 'package:wordle_clone/pages/game/bloc/game_bloc.dart';
import 'package:wordle_clone/pages/game/game_board.dart';
import 'package:wordle_clone/utils/constants.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GameBloc>(param1: context.locale == uzLatin),
      child: BlocConsumer<GameBloc, GameState>(
        listener: ((context, state) {
          if (state.gameWon) {
            showDialog(
              context: context,
              builder: (context1) => GameWonDialog(
                solution: state.solution,
                onNextClick: () {
                  Navigator.pop(context1);
                  context.read<GameBloc>()
                    ..add(AddWinCoins())
                    ..add(ResetGame());
                },
              ),
              barrierDismissible: false,
            );
          }
          if (state.message != null) {
            showToast(
              state.message!.tr(),
              textStyle: const TextStyle(fontSize: 24),
            );
          }
        }),
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.bg,
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Image.asset("assets/icons/previous.png")),
                        const Spacer(),
                        CoinWidget(coins: state.coins.toString()),
                      ],
                    ),
                  ),
                  const Spacer(),
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      PowerUpBtn(
                        imagePath: "assets/icons/magnifier.png",
                        price: revealLetterCoin,
                        onPressed: () =>
                            context.read<GameBloc>().add(RevealRightGuess()),
                      ),
                      const SizedBox(width: 4),
                      PowerUpBtn(
                        imagePath: "assets/icons/remove.png",
                        price: removeLetterCoin,
                        onPressed: () =>
                            context.read<GameBloc>().add(RemoveWrongGuess()),
                      ),
                      const SizedBox(width: 8),
                      const Spacer(),
                      KeyboardButton(
                        name: "submit".tr(),
                        color: AppColors.keyDefault,
                        width: 100,
                        height: 48,
                        onClick: state.wrongGuessShake
                            ? () {}
                            : () => context
                                .read<GameBloc>()
                                .add(HandleGuess("Enter")),
                      ),
                      const Spacer(),
                      const SizedBox(width: 36),
                      PowerUpBtn(
                        imagePath: "assets/icons/skip.png",
                        price: skipWordCoin,
                        onPressed: () =>
                            context.read<GameBloc>().add(SkipWord()),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class GameWonDialog extends StatelessWidget {
  const GameWonDialog({
    super.key,
    required this.solution,
    required this.onNextClick,
  });

  final String solution;
  final void Function() onNextClick;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            solution.toUpperCase(),
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "+$coinsForGameWon",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(width: 4),
              Image.asset(width: 32, height: 32, "assets/icons/coin.png"),
            ],
          ),
          const SizedBox(height: 16),
          Button(
            onPressed: onNextClick,
            child: Text("next".tr()),
          ),
        ],
      ),
    );
  }
}
