import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class InternetInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: InternetInfo)
class InternetInfoImpl implements InternetInfo {
  InternetInfoImpl(Connectivity connectivity) : _connectivity = connectivity;
  final Connectivity _connectivity;

  @override
  Future<bool> get isConnected => _requestConnection(_connectivity);

  Future<bool> _requestConnection(Connectivity connectivity) async {
    var connectivityResult = await (connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }
}
