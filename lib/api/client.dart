import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_flutter/model/game_detail.dart';

import '../model/game.dart';

part 'client.g.dart';

@RestApi(baseUrl: "https://mmo-games.p.rapidapi.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/games")
  Future<List<Game>> getGames();

  @GET("/game")
  Future<GameDetail> getGameDetails(@Query("id") int id);
}
