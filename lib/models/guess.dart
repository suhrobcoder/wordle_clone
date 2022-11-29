class Guess {
  const Guess({
    required this.id,
    required this.letters,
    required this.matches,
    required this.isComplete,
    required this.isCorrect,
  });

  final int id;
  final bool isComplete;
  final bool isCorrect;
  final List<String> letters;
  final List<MatchStatus> matches;

  Guess copyWith({
    int? id,
    bool? isComplete,
    bool? isCorrect,
    List<String>? letters,
    List<MatchStatus>? matches,
  }) {
    return Guess(
      id: id ?? this.id,
      isComplete: isComplete ?? this.isComplete,
      isCorrect: isCorrect ?? this.isCorrect,
      letters: letters ?? this.letters,
      matches: matches ?? this.matches,
    );
  }
}

typedef MatchingUsedKey = Map<String, MatchStatus>;

enum MatchStatus { correct, present, absent, empty }
