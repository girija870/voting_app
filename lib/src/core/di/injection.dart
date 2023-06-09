import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/core/di/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  getIt.init(environment: Environment.dev);
}
