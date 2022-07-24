import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor() : super();

  @override
  Future<void> onRequest(RequestOptions options,RequestInterceptorHandler handler,) async {
    if(options.extra.containsKey('requiresAuthToken')){
      if(options.extra['requiresAuthToken'] == true) {
        // final token = await _ref.watch(keyValueStorageServiceProvider).getAuthToken();
        // options.headers.addAll(
        //   <String, String?> {'Authorization': 'Bearer $token '},
        // );
      }
      options.extra.remove('requiresAuthToken');
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final success = response.data['headers']['error'] == 0;

    if(success) return handler.next(response);

    return handler.reject(
      DioError(
        requestOptions: response.requestOptions,
        response: response,
      ),
    );
  }
}
