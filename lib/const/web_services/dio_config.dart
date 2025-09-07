import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:makhekh/const/api/api_links.dart';
import 'package:makhekh/const/web_services/api_interceptor.dart';
import 'package:makhekh/const/web_services/api_exceptions.dart';

class DioClient {
  late Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL']!,
        connectTimeout: const Duration(milliseconds: ApiLinks.connectTimeout),
        receiveTimeout: const Duration(milliseconds: ApiLinks.receiveTimeout),
        followRedirects: true,
        maxRedirects: 5,
        validateStatus: (status) {
          return status != null && status < 500;
        },
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
      ),
    );

    _dio.interceptors.add(ApiInterceptor());
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  ApiException _handleDioError(DioException error) {
    final statusCode = error.response?.statusCode;

    switch (statusCode) {
      case 400:
        return BadRequestException(error.response?.data['message'] ?? "Bad Request", statusCode: statusCode);
      case 401:
        return UnauthorizedException(error.response?.data['message'] ?? "Unauthorized", statusCode: statusCode);
      case 404:
        return NotFoundException(error.response?.data['message'] ?? "Not Found", statusCode: statusCode);
      default:
        return FetchDataException(error.response?.data['message'] ?? "Error occurred: ${error.message}", statusCode: statusCode);
    }
  }
}