// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:vibration/vibration.dart';
import 'package:wordle_clone/data/shared_prefs.dart';

import 'package:wordle_clone/data/words_service.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/utils/constants.dart';
import 'package:wordle_clone/utils/list_ext.dart';

part 'game_event.dart';
part 'game_state.dart';

@Injectable()
class GameBloc extends Bloc<GameEvent, GameState> {
  final WordsService wordsService;
  final SharedPrefs sharedPrefs;

  late final List<String> wordList;
  late final List<String> answers;

  GameBloc(this.wordsService, this.sharedPrefs)
      : super(GameState.initialState()) {
    wordList = wordsService.getWordList();
    answers = wordsService.getAnswers();
    sharedPrefs.listenCoins().listen((event) {
      add(CoinChanged(sharedPrefs.coins));
    });
    on<_HandleFoundKeysOnKeyboard>((event, emit) {
      final tempUsedKeys = {...state.usedKeys};
      event.guess.letters.forEachIndexed((letter, index) {
        final keyValue = tempUsedKeys[letter];
        if (keyValue == null) {
          tempUsedKeys[letter] = event.guess.matches[index];
        } else if (event.guess.matches[index] == MatchStatus.correct) {
          return;
        } else {
          tempUsedKeys[letter] = event.guess.matches[index];
        }
      });
      emit(state.copyWith(usedKeys: tempUsedKeys));
    });
    on<_CheckGameEnd>(((event, emit) {
      final attemptsCount =
          state.guesses.where((guess) => guess.isComplete).length;
      if (attemptsCount == 6) {
        emit(state.copyWith(gameEnded: true));
      }
    }));
    on<_UpdateGuess>((event, emit) {
      final currentGuessLetters = [...event.currentGuess.letters];
      var nextEmptyIndex =
          currentGuessLetters.indexWhere((letter) => letter.isEmpty);
      if (nextEmptyIndex == -1) nextEmptyIndex = 5;
      final lastNonEmptyIndex = nextEmptyIndex - 1;
      if (event.keyPressed != "<" &&
          event.keyPressed != "Enter" &&
          nextEmptyIndex < 5) {
        currentGuessLetters[nextEmptyIndex] = event.keyPressed;
        final updatedGuess =
            event.currentGuess.copyWith(letters: currentGuessLetters);
        final updatedGuesses = state.guesses
            .mapIndexed((guess, index) =>
                index == state.currentGuessIndex ? updatedGuess : guess)
            .toList();
        emit(state.copyWith(guesses: updatedGuesses));
      } else if (event.keyPressed == "<") {
        if (lastNonEmptyIndex >= 0) {
          currentGuessLetters[lastNonEmptyIndex] = "";
        }
        final updatedGuess =
            event.currentGuess.copyWith(letters: currentGuessLetters);
        final updatedGuesses = state.guesses
            .mapIndexed((guess, index) =>
                index == state.currentGuessIndex ? updatedGuess : guess)
            .toList();
        emit(state.copyWith(guesses: updatedGuesses));
      }
    });
    on<_CheckGuess>((event, emit) async {
      final currentGuessedWord = event.currentGuess.letters.join("");
      if (currentGuessedWord.length == 5) {
        // TODO
        if (currentGuessedWord == state.solution) {
          final matches = [
            MatchStatus.correct,
            MatchStatus.correct,
            MatchStatus.correct,
            MatchStatus.correct,
            MatchStatus.correct,
          ];
          final updatedGuess = event.currentGuess
              .copyWith(matches: matches, isComplete: true, isCorrect: true);
          final updatedGuesses = state.guesses
              .mapIndexed((guess, index) =>
                  index == state.currentGuessIndex ? updatedGuess : guess)
              .toList();
          emit(state.copyWith(guesses: updatedGuesses, gameWon: true));
        } else if (wordList.contains(currentGuessedWord)) {
          final matches = <MatchStatus>[];
          event.currentGuess.letters.forEachIndexed((letter, index) {
            final leftSlice = currentGuessedWord.substring(0, index + 1);
            final countInLeft = leftSlice
                .split('')
                .where((element) => element == letter)
                .length;
            final totalCount = state.solution
                .split('')
                .where((element) => element == letter)
                .length;
            final nonMatchingPairs = state.solution.split('').whereIndexed(
                (element, index) => currentGuessedWord[index] != element);
            if (letter == state.solution[index]) {
              matches.add(MatchStatus.correct);
            } else if (state.solution.contains(letter)) {
              if (countInLeft <= totalCount &&
                  nonMatchingPairs.contains(letter)) {
                matches.add(MatchStatus.present);
              } else {
                matches.add(MatchStatus.absent);
              }
            } else {
              matches.add(MatchStatus.absent);
            }
          });
          final updatedGuess = event.currentGuess
              .copyWith(matches: matches, isComplete: true, isCorrect: false);
          final updatedGuesses = state.guesses
              .mapIndexed((guess, index) =>
                  index == state.currentGuessIndex ? updatedGuess : guess)
              .toList();
          emit(state.copyWith(
              guesses: updatedGuesses,
              currentGuessIndex: state.currentGuessIndex + 1));
          add(_HandleFoundKeysOnKeyboard(updatedGuess));
        } else {
          emit(state.copyWith(wrongGuessShake: true));
          Vibration.vibrate(duration: 100);
          await Future.delayed(const Duration(milliseconds: 500));
          emit(state.copyWith(wrongGuessShake: false));
        }
      }
    });
    on<HandleGuess>((event, emit) {
      if (!state.gameEnded) {
        final currentGuess = state.guesses[state.currentGuessIndex];
        if (event.keyPressed != "Enter" && !currentGuess.isComplete) {
          add(_UpdateGuess(
              keyPressed: event.keyPressed, currentGuess: currentGuess));
        } else if (event.keyPressed == "Enter" && !state.gameWon) {
          add(_CheckGuess(currentGuess));
        }
      }
    });
    on<ResetGame>((event, emit) {
      if (state.gameWon) {
        sharedPrefs.setCoins(state.coins + coinsForGameWon);
      }
      emit(GameState.initialState().copyWith(solution: answers.random()));
    });
    on<RevealRightGuess>((event, emit) {
      if (state.coins < revealLetterCoin) {
        return;
      }
      var unRevealedKey = state.solution.split('').firstWhere(
          (element) => !state.usedKeys.keys.contains(element),
          orElse: () => '');
      if (unRevealedKey.isEmpty) {
        unRevealedKey = state.solution.split('').firstWhere(
            (element) => state.usedKeys[element] != MatchStatus.correct,
            orElse: () => '');
      }
      if (unRevealedKey.isNotEmpty) {
        final newUsedKeys = {
          ...state.usedKeys,
          unRevealedKey: MatchStatus.correct
        };
        final newRevealedLetters = state.revealedLetters;
        newRevealedLetters.add(unRevealedKey);
        emit(state.copyWith(
            usedKeys: newUsedKeys, revealedLetters: newRevealedLetters));
        sharedPrefs.setCoins(state.coins - revealLetterCoin);
      }
    });
    on<CoinChanged>((event, emit) {
      emit(state.copyWith(coins: event.coins));
    });
    add(ResetGame());
    add(CoinChanged(sharedPrefs.coins));
  }
}

class _HandleFoundKeysOnKeyboard extends GameEvent {
  final Guess guess;

  _HandleFoundKeysOnKeyboard(this.guess);
}

class _CheckGameEnd extends GameEvent {}

class _UpdateGuess extends GameEvent {
  final String keyPressed;
  final Guess currentGuess;
  _UpdateGuess({
    required this.keyPressed,
    required this.currentGuess,
  });
}

class _CheckGuess extends GameEvent {
  final Guess currentGuess;

  _CheckGuess(this.currentGuess);
}

class CoinChanged extends GameEvent {
  final int coins;

  CoinChanged(this.coins);
}
