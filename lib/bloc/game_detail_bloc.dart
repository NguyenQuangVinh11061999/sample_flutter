import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter/event/game_detail_event.dart';
import 'package:sample_flutter/state/game_detail_state.dart';

import '../api/client.dart';

class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  RestClient client;
  GameDetailBloc(this.client) : super(GameDetailInitial()) {
    on<GameDetailFetchData>((event, emit) async {
      emit(GameDetailLoading());
      try {
        final game = await client.getGameDetails(event.id);
        emit(GameDetailLoaded(game));
      } catch (e) {
        emit(GameDetailError(e.toString()));
      }
    });
  }
}
