import 'package:flutter_biolerplate/data/data_source/local/kay_value_storage_base.dart';

class KeyValueStorageService {
  static const _authTokenKey = 'authToken';
  static const _authPasswordKey = 'authPasswordKey';
  static const _authUserKey = 'authUserKey';

  final _keyValueStorage = KeyValueStorageBase();

  Future<String> getAuthPassword() async {
    return await _keyValueStorage.getEncrypted(_authPasswordKey) ?? '';
  }

  /// Returns last authenticated user
  // StudentModel? getAuthUser() {
  //   final user = _keyValueStorage.getCommon<String>(_authUserKey);
  //   if (user == null) return null;
  //   return StudentModel.fromJson(jsonDecode(user) as JSON);
  // }

  Future<String> getAuthToken() async {
    return await _keyValueStorage.getEncrypted(_authTokenKey) ?? '';
  }

  void setAuthPassword(String password) {
    _keyValueStorage.setEncrypted(_authPasswordKey, password);
  }

  // void setAuthUser(StudentModel user) {
  //   _keyValueStorage.setCommon<String>(_authUserKey, jsonEncode(user.toJson()));
  // }

  void setAuthToken(String token) {
    _keyValueStorage.setEncrypted(_authTokenKey, token);
  }

  /// Resets the authentication. Even though these methods are asynchronous, we
  /// don't care about their completion which is why we don't use `await` and
  /// let them execute in the background.
  void resetKeys() {
    _keyValueStorage
      ..clearCommon()
      ..clearEncrypted();
  }
}
