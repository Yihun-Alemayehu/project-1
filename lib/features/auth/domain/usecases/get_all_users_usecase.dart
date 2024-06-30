
import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedef.dart';
import 'package:project_1/features/auth/domain/entities/user_entity.dart';
import 'package:project_1/features/auth/domain/repos/auth_repo.dart';

class GetAllUsersUsecase extends UsecaseWithoutParams<List<UserEntity>> {
  final AuthRepo _authRepo;

  GetAllUsersUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  ResultFuture<List<UserEntity>> call() async{
    return await _authRepo.getAllUsers();
  }

}