import 'package:flutter_biolerplate/config/config.dart';

class ApiEndpoint {
  const ApiEndpoint._();

  static const String baseUrl = Config.baseUrl;
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;
  static const int sendTimeout = 15000;

  static String auth(AuthEndpoint endpoint) {
    const path = '/auth';
    switch (endpoint) {
      case AuthEndpoint.REGISTER: return '$path/register';
      case AuthEndpoint.LOGIN: return '$path/login';
      case AuthEndpoint.REFRESH_TOKEN: return '$path/refresh-token';
      case AuthEndpoint.CHANGE_PASSWORD: return '$path/change-password';
      case AuthEndpoint.FORGOT_PW_SEND_OTP: return '$path/forgot/send-otp';
      case AuthEndpoint.FORGOT_PW_VERIFY_OTP: return '$path/forgot/verify-otp';
      case AuthEndpoint.FORGOT_PW_RESET_PASSWORD: return '$path/forgot/reset-password';
    }
  }
}

enum AuthEndpoint {
  REGISTER,
  LOGIN,
  REFRESH_TOKEN,
  CHANGE_PASSWORD,
  FORGOT_PW_RESET_PASSWORD,
  FORGOT_PW_SEND_OTP,
  FORGOT_PW_VERIFY_OTP,
}
