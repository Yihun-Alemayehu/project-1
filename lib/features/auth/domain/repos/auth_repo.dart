import 'package:project_1/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  // create a new user
  Future<void> createUser({required String createdAt, required String name, required String avatar});

  // get all the users
  Future<List<UserEntity>> getAllUsers();
}