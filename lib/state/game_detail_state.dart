import 'package:sample_flutter/model/game_detail.dart';

abstract class GameDetailState {}

class GameDetailInitial extends GameDetailState {}

class GameDetailLoading extends GameDetailState {}

class GameDetailLoaded extends GameDetailState {
  GameDetail gameDetail;

  GameDetailLoaded(this.gameDetail);
}

class GameDetailError extends GameDetailState {
  String message;

  GameDetailError(this.message);
}
