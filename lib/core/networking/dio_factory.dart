import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  // private constructor

  DioFactory._();

  static Dio? dio;
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),
    );
  }
}
