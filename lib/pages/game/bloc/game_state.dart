part of 'game_bloc.dart';

@immutable
class GameState extends Equatable {
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
    required this.showFirstRunDialog,
    required this.message,
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
  final bool showFirstRunDialog;
  final String? message;

  GameState.initialState({
    required this.coins,
    required this.showFirstRunDialog,
  })  : solution = '',
        guesses = initialGuesses,
        currentGuessIndex = 0,
        usedKeys = {},
        revealedLetters = [],
        gameStarted = false,
        gameEnded = false,
        gameWon = false,
        wrongGuessShake = false,
        message = null;

  GameState clear({required String solution}) {
    return copyWith(
      solution: solution,
      guesses: initialGuesses,
      currentGuessIndex: 0,
      usedKeys: {},
      revealedLetters: [],
      gameStarted: false,
      gameEnded: false,
      gameWon: false,
    );
  }

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
    bool? showFirstRunDialog,
    String? message,
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
      showFirstRunDialog: showFirstRunDialog ?? this.showFirstRunDialog,
      message: message,
    );
  }

  @override
  String toString() {
    return 'GameState{currentGuessIndex: $currentGuessIndex, gameEnded: $gameEnded, gameStarted: $gameStarted, gameWon: $gameWon, guesses: $guesses, solution: $solution, usedKeys: $usedKeys, revealedLetters: $revealedLetters, wrongGuessShake: $wrongGuessShake, coins: $coins, showFirstRunDialog: $showFirstRunDialog, message: $message}';
  }

  @override
  List<Object?> get props => [
        currentGuessIndex,
        gameEnded,
        gameStarted,
        gameWon,
        guesses,
        solution,
        usedKeys,
        revealedLetters,
        wrongGuessShake,
        coins,
        showFirstRunDialog,
        message,
      ];
}
