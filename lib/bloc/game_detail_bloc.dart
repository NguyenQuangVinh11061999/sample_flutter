import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter/api/api_client.dart';
import 'package:sample_flutter/event/game_detail_event.dart';
import 'package:sample_flutter/state/game_detail_state.dart';

class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  GameDetailBloc() : super(GameDetailInitial()) {
    on<GameDetailFetchData>((event, emit) async {
      emit(GameDetailLoading());
      try {
        final game = await ApiClient.apiService.getGameDetails(event.id);
        emit(GameDetailLoaded(game));
      } catch (e) {
        emit(GameDetailError(e.toString()));
      }
    });
  }
}
