// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract interface class INetworkInfo {
  Future<bool> get isConnected;
}

@singleton
class NetworkInfoImpl implements INetworkInfo {
  final _connectivity = Connectivity();

  @override
  Future<bool> get isConnected async {
    final connectionStatus = await _connectivity.checkConnectivity();
    return connectionStatus != ConnectivityResult.none;
  }
}
