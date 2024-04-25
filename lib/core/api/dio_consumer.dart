import 'package:dio/dio.dart';
import 'package:mentorship/core/api/api_consumer.dart';

import '../error/server_failures.dart';

class DioConsumer extends ApiConsumer {
  Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = "https://api.spacexdata.com/v4";
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: false,
        responseHeader: true,
        responseBody: false,
        error: true,
      ),
    );
  }

  @override
  get(String path, {data, Map<String, dynamic>? queryParameters}) async {
    try {
      var response =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}

void handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerFailures(
        'Connection to the server timed out.',
      );

    case DioExceptionType.sendTimeout:
      throw ServerFailures('Send timed out');

    case DioExceptionType.receiveTimeout:
      throw ServerFailures('Receive timed out');

    case DioExceptionType.badCertificate:
      throw ServerFailures('Bad Certificate');

    case DioExceptionType.cancel:
      throw ServerFailures(
        'Request cancelled.',
      );

    case DioExceptionType.connectionError:
      throw ServerFailures(
        'Unable to connect to the server, please make sure you are connected to the internet and try again.',
      );

    case DioExceptionType.unknown:
      throw ServerFailures(
        'An unknown error occurred.',
      );
    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw ServerFailures(e.response.toString());
        case 401:
          ServerFailures(e.response.toString());
        case 403:
          ServerFailures('server error');
        case 404:
          ServerFailures('server error');
        case 409:
          throw ServerFailures(e.response.toString());
        case 422:
          ServerFailures('server error');
        case 504:
          ServerFailures('server error');
      }
  }
}
