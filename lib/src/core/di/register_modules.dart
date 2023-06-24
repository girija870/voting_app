import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:voting_app/src/core/extensions/num_extensions.dart';
import 'package:voting_app/src/core/network/network_services.dart';

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
            requestBody: true, requestHeader: true, responseHeader: true),
        QueuedInterceptorsWrapper(
          onRequest: (options, handler) async {
            String token =
                'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjkwZGE1ZGMzY2UwYjg3ZTM2ZjVjYTY0MjNkN2IwNWZhNWEzZGI0OTU3YTU0ZjgwNDExOTA3M2FjZGMzODg5YmFkMjhiYzc4ZGUwMWJlYTciLCJpYXQiOjE2ODcyNjIzMTQuMjA3Njc2LCJuYmYiOjE2ODcyNjIzMTQuMjA3Njc3LCJleHAiOjE3MTg4ODQ3MTQuMjA3MDMzLCJzdWIiOiI1MyIsInNjb3BlcyI6W119.k7DJ2IofIrLPJUXAjxpNVorBWujJwFt4mCAMWe3MhjEBKiqb84DmgOgBhGsRSoLtmCasXQ46nj-nj7z4t2Gn7pSoVnAUOMrJkXvUgxYMpD6h50e68l8WFyT5pI1zgxOn7e32ZWxwZfWpjgudCxPqQB2ebJDoCCEfwTCHkN57L07og2BdKSQCT_4z5-4Q0vvJTE7x3y86-R4G4G02qxBRaeXMu1xgaq7QJr5abJ19dBA385ZmSUTx4XZQV_nSo3RG6HnS-4QW00oJsxLrpIafeznYLFDXTvGmEqENiu-0sjOzRi36XIaEyuHoiK03n6P42uLom0JU3b_402tINaDWt6rDEtpOvKBtEyHRsIwvplaCNeG5Fr046wEpKrMfoqmU-9waoVMjSZxwqzibUkayaA6BiFYGdFBPZBjWTQZXf_Uq0CbJSOQKSWkC7H5cQobAUQScQDNC5rUm481GVCoF2eVGptAW-h4pDwGNm-cFjE64ljkm3Te6XVNhQTuRQhRI2hd7DEKoOCaI3DQ_x4oXxM7jsrrn0EaozndS0NAgyNk88maoXgoCeF6v1kQFzKmg9O4WbZOAyCZENm8Lfh7LAL0Ebs5nIVU6enxs1gP26XHh-rZqv7K1U3mOtNEPyYSLc8JUzPtuYnegZP3UCcXax94-xt0tOtchuKFxO68-Ezk';

            options.headers.addAll(<String, dynamic>{
              'Authorization': 'Bearer $token',
            });
            handler.next(options);
          },
        )
      ]);
  }

  @lazySingleton
  NetworkServices get networkServices => NetworkServices(authenticatedDio);
}
