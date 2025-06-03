import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter/event/game_event.dart';
import 'package:sample_flutter/state/game_state.dart';

import '../api/api_client.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<FetchGames>((event, emit) async {
      emit(GameLoading());
      try {
        final games = await ApiClient.apiService.getGames();
        emit(GameLoaded(games));
      } catch (e) {
        emit(GameError(e.toString()));
      }
    });
  }
}
