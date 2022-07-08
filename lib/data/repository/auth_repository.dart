// import 'package:dio/dio.dart';
// import 'package:flutter_biolerplate/data/data_source/remote/network/dio_exceptions.dart';
// import 'package:flutter_biolerplate/data/data_source/remote/provider/user_provider.dart';

// class UserRepository {

//   UserRepository(this.userProvider);
//   final UserProvider userProvider;

//   Future<List<UserModel>> getUsersRequested() async {
//     try {
//       final response = await userProvider.getUsersApi();
//       final users = (response.data['data'] as List)
//           .map(UserModel.fromJson)
//           .toList();
//       return users;
//     } on DioError catch (e) {
//       final errorMessage = DioExceptions.fromDioError(e).toString();
//       throw errorMessage;
//     }
//   }

//   Future<NewUser> addNewUserRequested(String name, String job) async {
//     try {
//       final response = await userApi.addUserApi(name, job);
//       return NewUser.fromJson(response.data);
//     } on DioError catch (e) {
//       final errorMessage = DioExceptions.fromDioError(e).toString();
//       throw errorMessage;
//     }
//   }

//   Future<NewUser> updateUserRequested(int id, String name, String job) async {
//     try {
//       final response = await userApi.updateUserApi(id, name, job);
//       return NewUser.fromJson(response.data);
//     } on DioError catch (e) {
//       final errorMessage = DioExceptions.fromDioError(e).toString();
//       throw errorMessage;
//     }
//   }

//   Future<void> deleteNewUserRequested(int id) async {
//     try {
//       await userApi.deleteUserApi(id);
//     } on DioError catch (e) {
//       final errorMessage = DioExceptions.fromDioError(e).toString();
//       throw errorMessage;
//     }
//   }
// }
