import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'client.dart';

class ApiClient {
  static final dio = Dio(
      BaseOptions(
        headers: {
          "x-rapidapi-host": "mmo-games.p.rapidapi.com",
          "x-rapidapi-key":
              "9b45e2a76bmsh94560e2b1722a4bp1b2a43jsna25826ace1ca",
        },
      ),
    )
    ..interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
        logPrint: print, // bạn có thể thay thế bằng custom logger
      ),
    );

  static final apiService = RestClient(
    dio,
    baseUrl: dotenv.env['API_URL'] ?? '',
  );
}
