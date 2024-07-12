import 'package:project_1/core/utils/typedef.dart';
import 'package:project_1/features/auth/domain/entities/user_entity.dart';
import 'package:project_1/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  ResultFuture<void> createUser({required String createdAt, required String name, required String avatar}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<UserEntity>> getAllUsers() {
    // TODO: implement getAllUsers
    throw UnimplementedError();
  }

}