import 'package:equatable/equatable.dart';
import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedef.dart';
import 'package:project_1/features/auth/domain/repos/auth_repo.dart';

class CreateUserUsecase extends UsecaseWithParams<void, CreateUserParams> {
  final AuthRepo _authRepo;

  CreateUserUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  ResultFuture<void> call(CreateUserParams params) async{
    return await _authRepo.createUser(
      createdAt: params.createdAt,
      name: params.name,
      avatar: params.avatar,
    );
  }
}

class CreateUserParams extends Equatable {
  final String createdAt;
  final String name;
  final String avatar;

  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  factory CreateUserParams.empty(){
    return const CreateUserParams(
      createdAt: 'createdAt',
      name: 'name',
      avatar: 'avatar',
    );
  }

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
