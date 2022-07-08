import 'package:dio/dio.dart';
import 'package:flutter_biolerplate/data/data_source/remote/constant/endpoints.dart';
import 'package:flutter_biolerplate/data/data_source/remote/network/dio_client.dart';

class UserProvider {

  UserProvider({required this.dioClient});
  final DioClient dioClient;

  Future<Response> login(String username, String password) async {
    try {
      final response = await dioClient.post(
        Endpoints.login,
        data: {
          'username': username,
          'password': password,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> register(String username, String password) async {
    try {
      final response = await dioClient.post(
        Endpoints.login,
        data: {
          'username': username,
          'password': password,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getUserProfile() async {
    try {
      final response = await dioClient.get(Endpoints.profile);
      return response;
    } catch (e) {
      rethrow;
    }
  }

}
