import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyValueStorageBase {
  /// Instance of shared preferences
  static SharedPreferences? _sharedPreferences;

  /// Instance of flutter secure storage
  static FlutterSecureStorage? _secureStorage;

  /// Singleton instance of KeyValueStorage Helper
  static KeyValueStorageBase? _instance;

  /// Get instance of this class
  factory KeyValueStorageBase() => _instance ?? const KeyValueStorageBase._();

  /// Private constructor
  const KeyValueStorageBase._();


  static Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    _secureStorage ??= const FlutterSecureStorage();
  }

  /// Reads the value for the key from common preferences storage
  T? getCommon<T>(String key) {
    try {
      switch (T) {
        case String:
          return _sharedPreferences!.getString(key) as T?;
        case int:
          return _sharedPreferences!.getInt(key) as T?;
        case bool:
          return _sharedPreferences!.getBool(key) as T?;
        case double:
          return _sharedPreferences!.getDouble(key) as T?;
        default:
          return _sharedPreferences!.get(key) as T?;
      }
    } on Exception catch (ex) {
      debugPrint('$ex');
      return null;
    }
  }

  /// Reads the decrypted value for the key from secure storage
  Future<String?> getEncrypted(String key) {
    try {
      return _secureStorage!.read(key: key);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future<String?>.value();
    }
  }

  /// Sets the value for the key to common preferences storage
  Future<bool> setCommon<T>(String key, T value) {
    switch (T) {
      case String:
        return _sharedPreferences!.setString(key, value as String);
      case int:
        return _sharedPreferences!.setInt(key, value as int);
      case bool:
        return _sharedPreferences!.setBool(key, value as bool);
      case double:
        return _sharedPreferences!.setDouble(key, value as double);
      default:
        return _sharedPreferences!.setString(key, value as String);
    }
  }

  /// Sets the encrypted value for the key to secure storage
  Future<bool> setEncrypted(String key, String value) {
    try {
      _secureStorage!.write(key: key, value: value);
      return Future.value(true);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future.value(false);
    }
  }

  /// Erases common preferences keys
  Future<bool> clearCommon() => _sharedPreferences!.clear();

  /// Erases encrypted keys
  Future<bool> clearEncrypted() async {
    try {
      await _secureStorage!.deleteAll();
      return true;
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return false;
    }
  }
}
