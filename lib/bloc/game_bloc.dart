import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter/api/client.dart';
import 'package:sample_flutter/event/game_event.dart';
import 'package:sample_flutter/state/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  RestClient client;

  GameBloc(this.client) : super(GameInitial()) {
    on<FetchGames>((event, emit) async {
      emit(GameLoading());
      try {
        final games = await client.getGames();
        emit(GameLoaded(games));
      } catch (e) {
        emit(GameError(e.toString()));
      }
    });
  }
}
