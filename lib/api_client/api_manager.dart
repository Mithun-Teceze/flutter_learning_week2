import 'package:dio/dio.dart';


class ApiManager {
  // Centralized Dio Instance
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.1.41:3000',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  static Dio get dio => _dio;

  // Add Token After Login
  static void setToken(String token) {
    _dio.interceptors.clear();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options);
        },
      ),
    );
  }

}