part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class HandleGuess extends GameEvent {
  final String keyPressed;

  HandleGuess(this.keyPressed);
}

class ResetGame extends GameEvent {}

class RevealRightGuess extends GameEvent {}

class AddWinCoins extends GameEvent {}
