part of 'game_bloc.dart';

@immutable
class GameState {
  const GameState({
    required this.solution,
    required this.guesses,
    required this.currentGuessIndex,
    required this.usedKeys,
    required this.revealedLetters,
    required this.gameStarted,
    required this.gameEnded,
    required this.gameWon,
    required this.wrongGuessShake,
    required this.coins,
  });

  final int currentGuessIndex;
  final bool gameEnded;
  final bool gameStarted;
  final bool gameWon;
  final List<Guess> guesses;
  final String solution;
  final MatchingUsedKey usedKeys;
  final List<String> revealedLetters;
  final bool wrongGuessShake;
  final int coins;

  GameState.initialState()
      : solution = '',
        guesses = initialGuesses,
        currentGuessIndex = 0,
        usedKeys = {},
        revealedLetters = [],
        gameStarted = false,
        gameEnded = false,
        gameWon = false,
        wrongGuessShake = false,
        coins = 0;

  GameState copyWith({
    int? currentGuessIndex,
    bool? gameEnded,
    bool? gameStarted,
    bool gameWon = false,
    List<Guess>? guesses,
    List<String>? revealedLetters,
    String? solution,
    MatchingUsedKey? usedKeys,
    bool? wrongGuessShake,
    int? coins,
  }) {
    return GameState(
      currentGuessIndex: currentGuessIndex ?? this.currentGuessIndex,
      gameEnded: gameEnded ?? this.gameEnded,
      gameStarted: gameStarted ?? this.gameStarted,
      gameWon: gameWon,
      guesses: guesses ?? this.guesses,
      solution: solution ?? this.solution,
      usedKeys: usedKeys ?? this.usedKeys,
      revealedLetters: revealedLetters ?? this.revealedLetters,
      wrongGuessShake: wrongGuessShake ?? this.wrongGuessShake,
      coins: coins ?? this.coins,
    );
  }

  @override
  String toString() {
    return 'GameState{currentGuessIndex: $currentGuessIndex, gameEnded: $gameEnded, gameStarted: $gameStarted, gameWon: $gameWon, guesses: $guesses, solution: $solution, usedKeys: $usedKeys, revealedLetters: $revealedLetters, wrongGuessShake: $wrongGuessShake, coins: $coins}';
  }
}
