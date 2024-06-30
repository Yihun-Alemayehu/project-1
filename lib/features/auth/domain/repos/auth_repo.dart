import 'package:dartz/dartz.dart';
import 'package:project_1/core/errors/failure.dart';
import 'package:project_1/core/utils/typedef.dart';
import 'package:project_1/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  // create a new user
  ResultFuture<void> createUser(
      {required String createdAt,
      required String name,
      required String avatar});

  // get all the users
  ResultFuture<List<UserEntity>> getAllUsers();
}
