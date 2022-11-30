part of 'game_bloc.dart';

@immutable
class GameState {
  const GameState({
    required this.solution,
    required this.guesses,
    required this.currentGuessIndex,
    required this.usedKeys,
    required this.gameStarted,
    required this.gameEnded,
    required this.gameWon,
    required this.wrongGuessShake,
  });

  final int currentGuessIndex;
  final bool gameEnded;
  final bool gameStarted;
  final bool gameWon;
  final List<Guess> guesses;
  final String solution;
  final MatchingUsedKey usedKeys;
  final bool wrongGuessShake;

  GameState.initialState()
      : solution = '',
        guesses = initialGuesses,
        currentGuessIndex = 0,
        usedKeys = {},
        gameStarted = false,
        gameEnded = false,
        gameWon = false,
        wrongGuessShake = false;

  GameState copyWith({
    int? currentGuessIndex,
    bool? gameEnded,
    bool? gameStarted,
    bool? gameWon,
    List<Guess>? guesses,
    String? solution,
    MatchingUsedKey? usedKeys,
    bool? wrongGuessShake,
  }) {
    return GameState(
      currentGuessIndex: currentGuessIndex ?? this.currentGuessIndex,
      gameEnded: gameEnded ?? this.gameEnded,
      gameStarted: gameStarted ?? this.gameStarted,
      gameWon: gameWon ?? this.gameWon,
      guesses: guesses ?? this.guesses,
      solution: solution ?? this.solution,
      usedKeys: usedKeys ?? this.usedKeys,
      wrongGuessShake: wrongGuessShake ?? this.wrongGuessShake,
    );
  }
}
