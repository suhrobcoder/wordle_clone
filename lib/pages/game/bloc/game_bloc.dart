// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wordle_clone/data/words_service.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/utils/constants.dart';
import 'package:wordle_clone/utils/list_ext.dart';

part 'game_event.dart';
part 'game_state.dart';

@Injectable()
class GameBloc extends Bloc<GameEvent, GameState> {
  final WordsService wordsService;

  late final List<String> wordList;
  late final List<String> answers;

  GameBloc(this.wordsService) : super(GameState.initialState()) {
    wordList = wordsService.getWordList();
    answers = wordsService.getAnswers();
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
        currentGuessLetters[lastNonEmptyIndex] = "";
        final updatedGuess =
            event.currentGuess.copyWith(letters: currentGuessLetters);
        final updatedGuesses = state.guesses
            .mapIndexed((guess, index) =>
                index == state.currentGuessIndex ? updatedGuess : guess)
            .toList();
        emit(state.copyWith(guesses: updatedGuesses));
      }
    });
    on<_CheckGuess>((event, emit) {
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
          emit(state.copyWith(guesses: updatedGuesses));
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
          // TODO wrong guess shake
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
    on<_ResetGameState>((event, emit) {
      emit(state.copyWith(guesses: initialGuesses));
    });
    on<ResetGame>((event, emit) {
      emit(GameState.initialState().copyWith(solution: answers.random()));
      add(_ResetGameState());
    });
    add(ResetGame());
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

class _ResetGameState extends GameEvent {}
