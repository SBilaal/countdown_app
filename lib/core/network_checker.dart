import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:injectable/injectable.dart';

@injectable
class NetworkInfo {
  InternetConnectionChecker connectionChecker = InternetConnectionChecker();

  Future<bool> get isConnected => connectionChecker.hasConnection;
}
