// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:vibration/vibration.dart';
import 'package:wordle_clone/data/shared_prefs.dart';

import 'package:wordle_clone/data/words_service.dart';
import 'package:wordle_clone/models/guess.dart';
import 'package:wordle_clone/pages/game/keyboard.dart';
import 'package:wordle_clone/utils/constants.dart';
import 'package:wordle_clone/utils/list_ext.dart';

part 'game_event.dart';
part 'game_state.dart';

@Injectable()
class GameBloc extends Bloc<GameEvent, GameState> {
  final WordsService wordsService;
  final SharedPrefs sharedPrefs;
  final bool isLatin;

  late final List<String> wordList;
  late final List<String> answers;
  late final List<String> keys = (isLatin ? latinKeys : cyrillicKeys)
      .expand((element) => element)
      .toList();

  GameBloc(this.wordsService, this.sharedPrefs, @factoryParam this.isLatin)
      : super(GameState.initialState()) {
    if (isLatin) {
      wordList = wordsService.getLatinWordList();
      answers = wordsService.getLatinAnswers();
    } else {
      wordList = wordsService.getCyrillicWordList();
      answers = wordsService.getCyrillicAnswers();
    }
    sharedPrefs.listenCoins.listen((event) {
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
      final guessedWord = event.currentGuess.letters.join("");
      final currentGuessedWord = _replaceSpecialCharacters(guessedWord);
      final currentSolution = _replaceSpecialCharacters(state.solution);
      if (currentGuessedWord.length < 5) {
        return;
      }
      if (!wordList.contains(guessedWord)) {
        emit(state.copyWith(wrongGuessShake: true));
        Vibration.vibrate(duration: 100);
        await Future.delayed(const Duration(milliseconds: 500));
        emit(state.copyWith(wrongGuessShake: false));
        return;
      }
      final matches = _matchAnswer(currentGuessedWord, currentSolution);
      final updatedGuess = event.currentGuess.copyWith(
        matches: matches,
        isComplete: true,
        isCorrect: matches.every((match) => match == MatchStatus.correct),
      );
      final updatedGuesses = state.guesses
          .mapIndexed((guess, index) =>
              index == state.currentGuessIndex ? updatedGuess : guess)
          .toList();
      emit(state.copyWith(
        guesses: updatedGuesses,
        gameWon: matches.every((match) => match == MatchStatus.correct),
        currentGuessIndex: state.currentGuessIndex + 1,
      ));
      add(_HandleFoundKeysOnKeyboard(updatedGuess));
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
      emit(GameState.initialState(solution: answers.random()));
    });
    on<RevealRightGuess>((event, emit) {
      if (state.coins < revealLetterCoin) {
        return;
      }
      final rightGuess = _findRightGuess();
      if (rightGuess == null) return; // TODO show error message
      emit(state.copyWith(
          usedKeys: {...state.usedKeys, rightGuess: MatchStatus.correct}));
      sharedPrefs.setCoins(state.coins - revealLetterCoin);
    });
    on<RemoveWrongGuess>((event, emit) {
      if (state.coins < removeLetterCoin) {
        return;
      }
      final unRevealedWrongKeys = keys.where((element) =>
          !state.usedKeys.keys.contains(element) && isWrongKey(element));
      if (unRevealedWrongKeys.length <= removeWrongKeysCount) {
        return;
      }
      final newUsedKeys = {
        ...state.usedKeys,
        for (String key in (unRevealedWrongKeys.toList()..shuffle())
            .take(removeWrongKeysCount))
          key: MatchStatus.absent,
      };
      emit(state.copyWith(usedKeys: newUsedKeys));
      sharedPrefs.setCoins(state.coins - removeLetterCoin);
    });
    on<CoinChanged>((event, emit) {
      emit(state.copyWith(coins: event.coins));
    });
    on<AddWinCoins>((event, emit) {
      sharedPrefs.setCoins(state.coins + coinsForGameWon);
    });
    on<SkipWord>((event, emit) {
      if (state.coins < skipWordCoin) {
        return;
      }
      sharedPrefs.setCoins(state.coins - skipWordCoin);
      emit(GameState.initialState(solution: answers.random()));
    });
    add(ResetGame());
    add(CoinChanged(sharedPrefs.coins));
  }

  List<MatchStatus> _matchAnswer(String answer, String solution) {
    final answerList = answer.split('');
    final solutionList = solution.split('');
    final result = List.generate(5, (_) => MatchStatus.absent);
    answerList.forEachIndexed((letter, index) {
      if (letter == solutionList[index]) {
        answerList[index] = ' ';
        result[index] = MatchStatus.correct;
      }
    });
    answerList.forEachIndexed((letter, index) {
      if (solutionList.contains(letter)) {
        result[index] = MatchStatus.present;
      }
    });
    return result;
  }

  String _replaceSpecialCharacters(String input) {
    var result = input;
    result = result.replaceAll('sh', '1');
    result = result.replaceAll('ch', '2');
    result = result.replaceAll('ng', '3');
    result = result.replaceAll('o‘', '4');
    result = result.replaceAll('g‘', '5');
    result = result.replaceAll('нг', '6');
    return result;
  }

  bool isWrongKey(String key) {
    final specialKeysReplacedSolution =
        _replaceSpecialCharacters(state.solution);
    final specialKeysReplacedKey = _replaceSpecialCharacters(key);
    return !specialKeysReplacedSolution.contains(specialKeysReplacedKey);
  }

  String? _findRightGuess() {
    final specialKeysReplacedSolution =
        _replaceSpecialCharacters(state.solution);
    final usedKeys = state.usedKeys;
    for (var key in keys..shuffle()) {
      final key1 = _replaceSpecialCharacters(key);
      if (usedKeys[key] == null && specialKeysReplacedSolution.contains(key1)) {
        return key;
      }
    }
    return null;
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
