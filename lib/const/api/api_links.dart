import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApiLinks {
  // Base URL
  static String baseUrl = dotenv.env['BASE_URL']!;
  // Timeouts
  static const int connectTimeout = 15000;
  static const int receiveTimeout = 15000;
  // env Path
  static String envPath = "assets/env/.env";

  // Auth Endpoints
  static String login = 'Auth/signin';
  static String register = 'Auth/signup';
  static String verifyEmail = 'Auth/confirm-email';
  static String forgetPassword = 'Auth/forgot-password';
  static String resetPassword = 'Auth/reset-password';
}