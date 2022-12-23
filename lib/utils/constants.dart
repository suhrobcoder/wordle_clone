import 'package:flutter/material.dart';
import 'package:wordle_clone/models/guess.dart';

const letterCount = 5;
const rowCount = 6;
const marginBetweenCells = 8.0;

const initialCoins = 500;
const coinsForAd = 50;
const revealLetterCoin = 120;
const removeLetterCoin = 80;
const skipWordCoin = 200;
const coinsForGameWon = 100;

const removeWrongKeysCount = 3;

class AppColors {
  static const correct = Color(0xFF6aaa64);
  static const present = Color(0xFFc9b458);
  static const absent = Color(0xFF282828);
  static const keyDefault = Color(0xFF606060);
  static const bg = Color(0xFF121212);

  static Color getColorByMatch(MatchStatus? status) {
    if (status == MatchStatus.correct) {
      return correct;
    } else if (status == MatchStatus.present) {
      return present;
    } else if (status == MatchStatus.absent) {
      return absent;
    } else {
      return keyDefault;
    }
  }
}

const correctLetterGuess = Guess(
  id: 0,
  letters: ['S', 'A', 'L', 'O', 'M'],
  matches: [
    MatchStatus.correct,
    MatchStatus.empty,
    MatchStatus.empty,
    MatchStatus.empty,
    MatchStatus.empty,
  ],
  isComplete: false,
  isCorrect: false,
);

const presentLetterGuess = Guess(
  id: 0,
  letters: ['Y', 'A', 'X', 'SH', 'I'],
  matches: [
    MatchStatus.empty,
    MatchStatus.empty,
    MatchStatus.present,
    MatchStatus.empty,
    MatchStatus.empty,
  ],
  isComplete: false,
  isCorrect: false,
);

const absentLetterGuess = Guess(
  id: 0,
  letters: ['B', 'A', 'R', 'CH', 'A'],
  matches: [
    MatchStatus.empty,
    MatchStatus.empty,
    MatchStatus.empty,
    MatchStatus.absent,
    MatchStatus.empty,
  ],
  isComplete: false,
  isCorrect: false,
);

const initialGuesses = [
  Guess(
    id: 0,
    letters: ['', '', '', '', ''],
    matches: [
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
    ],
    isComplete: false,
    isCorrect: false,
  ),
  Guess(
    id: 1,
    letters: ['', '', '', '', ''],
    matches: [
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty
    ],
    isComplete: false,
    isCorrect: false,
  ),
  Guess(
    id: 2,
    letters: ['', '', '', '', ''],
    matches: [
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty
    ],
    isComplete: false,
    isCorrect: false,
  ),
  Guess(
    id: 3,
    letters: ['', '', '', '', ''],
    matches: [
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty
    ],
    isComplete: false,
    isCorrect: false,
  ),
  Guess(
    id: 4,
    letters: ['', '', '', '', ''],
    matches: [
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty
    ],
    isComplete: false,
    isCorrect: false,
  ),
  Guess(
    id: 5,
    letters: ['', '', '', '', ''],
    matches: [
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty,
      MatchStatus.empty
    ],
    isComplete: false,
    isCorrect: false,
  ),
];
