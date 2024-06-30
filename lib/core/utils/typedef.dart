import 'package:dartz/dartz.dart';
import 'package:project_1/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;