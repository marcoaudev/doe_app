import 'package:dartz/dartz.dart';
import 'package:doe/core/errors/failure.dart';

abstract interface class Usecase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}