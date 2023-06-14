import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  Dio get authenticatedDio {
    return Dio(
      BaseOptions(
        baseUrl: 'https://voting.ncash.online/',
        receiveTimeout: 60000.milliSeconds,
        connectTimeout: 60000.milliSeconds,
        responseType: ResponseType.json,
        headers: <String, dynamic>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    )..interceptors.addAll([
        PrettyDioLogger(
            requestBody: true, requestHeader: true, responseHeader: true)
      ]);
  }
}
