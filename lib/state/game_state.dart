import 'package:sample_flutter/model/game.dart';

abstract class GameState {}

class GameInitial extends GameState {}

class GameLoading extends GameState {}

class GameLoaded extends GameState {
  List<Game> games;

  GameLoaded(this.games);
}

class GameError extends GameState {
  String message;

  GameError(this.message);
}
