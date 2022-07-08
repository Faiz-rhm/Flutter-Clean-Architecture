class Endpoints {
  Endpoints._();
  // base url
  static const String baseUrl = 'https://reqres.in/api';
  // receiveTimeout
  static const int receiveTimeout = 15000;
  // connectTimeout
  static const int connectionTimeout = 15000;
  // send timeout
  static const int sendTimeout = 15000;

  static const String login = '$baseUrl/login';
  static const String register = '$baseUrl/register';
  static const String profile = '$baseUrl/users/profile';
}
