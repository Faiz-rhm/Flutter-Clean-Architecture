import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_biolerplate/app/helper/typedefs.dart';

class LoggingInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler,) {
    final httpMethod = options.method.toUpperCase();
    final url = options.baseUrl + options.path;

    debugPrint('--> $httpMethod $url'); //GET www.example.com/mock_path/all

    debugPrint('\tHeaders:');
    options.headers.forEach((k, Object? v) => debugPrint('\t\t$k: $v'));

    if (options.queryParameters.isNotEmpty) {
      debugPrint('\tqueryParams:');
      options.queryParameters
          .forEach((k, Object? v) => debugPrint('\t\t$k: $v'));
    }

    if (options.data != null) {
      debugPrint('\tBody: ${options.data}');
    }

    debugPrint('--> END $httpMethod');

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler,) {
    debugPrint('<-- RESPONSE');

    debugPrint('\tStatus code: ${response.statusCode}');

    if (response.statusCode == 304) {
      debugPrint('\tSource: Cache');
    } else {
      debugPrint('\tSource: Network');
    }

    debugPrint('\tResponse: ${response.data}');

    debugPrint('<-- END HTTP');

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError dioError, ErrorInterceptorHandler handler,) {
    debugPrint('--> ERROR');
    final httpMethod = dioError.requestOptions.method.toUpperCase();
    final url = dioError.requestOptions.baseUrl + dioError.requestOptions.path;

    debugPrint('\tMETHOD: $httpMethod'); // GET
    debugPrint('\tURL: $url'); // URL
    if (dioError.response != null) {
      debugPrint('\tStatus code: ${dioError.response!.statusCode}');
      if (dioError.response!.data != null) {
        final headers = dioError.response!.data['headers'] as JSON; //API Dependant
        final message = headers['message'] as String; //API Dependant
        final code = headers['code'] as String; //API Dependant
        debugPrint('\tException: $code');
        debugPrint('\tMessage: $message');
        if (headers.containsKey('data')) {
          //API Dependant
          final data = headers['data'] as List<Object?>;
          if (data.isNotEmpty) {
            debugPrint('\tData: $data');
          }
        }
      } else {
        debugPrint('${dioError.response!.data}');
      }
    } else if (dioError.error is SocketException) {
      const message = 'No internet connectivity';
      debugPrint('\tException: FetchDataException');
      debugPrint('\tMessage: $message');
    } else {
      debugPrint('\tUnknown Error');
    }

    debugPrint('<-- END ERROR');

    return super.onError(dioError, handler);
  }
}
