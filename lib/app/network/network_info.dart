import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfoI {
  Future<bool> get isConnected;
  Future<ConnectivityResult> get connectivityResult;
  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {

  final Connectivity _connectivityPlus = Connectivity();

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await _connectivityPlus.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  @override
  Future<ConnectivityResult> get connectivityResult async {
    return _connectivityPlus.checkConnectivity();
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      _connectivityPlus.onConnectivityChanged;

}
