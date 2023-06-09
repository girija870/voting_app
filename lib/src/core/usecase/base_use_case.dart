import 'package:dartz/dartz.dart';
import 'package:voting_app/src/core/errors/app_error.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<AppError, Out>> execute(In param);
}
