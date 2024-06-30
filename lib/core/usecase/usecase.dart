import 'package:project_1/core/utils/typedef.dart';

abstract class UsecaseWithParams<T, Params> {
  ResultFuture<T> call(Params params);
}

abstract class UsecaseWithoutParams<T> {
  ResultFuture<T> call();
}