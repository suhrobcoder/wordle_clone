part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class HandleGuess extends GameEvent {
  final String keyPressed;

  HandleGuess(this.keyPressed);
}

class ResetGame extends GameEvent {}

class RevealRightGuess extends GameEvent {}

class RemoveWrongGuess extends GameEvent {}

class AddWinCoins extends GameEvent {}

class SkipWord extends GameEvent {}

class FirstRunDialogShown extends GameEvent {}
