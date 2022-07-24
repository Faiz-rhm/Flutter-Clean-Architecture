import 'package:dio/dio.dart';
import 'package:flutter_biolerplate/app/helper/typedefs.dart';
import 'package:flutter_biolerplate/data/data_source/remote/response_model.dart';

/// A base class containing methods for basic API functionality.
///
/// Should be implemented by any service class that wishes to interact
/// with an API.
abstract class ApiInterface {
  const ApiInterface();

  Future<List<T>> getCollectionData<T>({
    required String endpoint,
    JSON? queryParams,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
    required T Function(JSON responseBody) converter,
  });

  Future<T> getDocumentData<T>({
    required String endpoint,
    JSON? queryParams,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
    required T Function(JSON responseBody) converter,
  });

  Future<T> setData<T>({
    required String endpoint,
    required JSON data,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
    required T Function(ResponseModel<JSON> response) converter,
  });

  Future<T> updateData<T>({
    required String endpoint,
    required JSON data,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
    required T Function(ResponseModel<JSON> response) converter,
  });

  Future<T> deleteData<T>({
    required String endpoint,
    JSON? data,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
    required T Function(ResponseModel<JSON> response) converter,
  });

  /// Base method for cancelling requests pre-maturely
  /// using the [cancelToken].
  ///
  /// If null, the **default** [cancelToken] inside [DioService] is used.
  void cancelRequests({CancelToken? cancelToken});
}
