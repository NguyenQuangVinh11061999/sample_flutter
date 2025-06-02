import 'package:dio/dio.dart';

class DioProvider {
  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://mmo-games.p.rapidapi.com/' ?? '',
        headers: {
          "x-rapidapi-host": "mmo-games.p.rapidapi.com",
          "x-rapidapi-key":
              "9b45e2a76bmsh94560e2b1722a4bp1b2a43jsna25826ace1ca",
        },
      ),
    );

    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}
