// 1. what does the class depends on ?
//    ## AuthRepository
// 2. how can we create fake version of the dependency ?
//    ## using mocktail
// 3. how can we control what our dependency do ?
//    ## using mocktail's API

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:project_1/features/auth/domain/repos/auth_repo.dart';
import 'package:project_1/features/auth/domain/usecases/create_user_usecase.dart';

class MockAuthRepo extends Mock implements AuthRepo {}

void main() {
  late CreateUserUsecase usecase;
  late AuthRepo authRepo;

  setUp(
    () {
      authRepo = MockAuthRepo();
      usecase = CreateUserUsecase(authRepo: authRepo);
    },
  );

  final params = CreateUserParams.empty();
  test('should call authrepo.createUser method', () async {
    // Arrange
    when(
      () => authRepo.createUser(
        createdAt: any(named: 'createdAt'),
        name: any(named: 'name'),
        avatar: any(named: 'avatar'),
      ),
    ).thenAnswer((_) async => const Right(null));

    // Act
    final result = await usecase(params);

    // Assert
    expect(result, const Right(null));
    verify(() => authRepo.createUser(
        createdAt: params.createdAt, name: params.name, avatar: params.avatar)).called(1);

    verifyNoMoreInteractions(authRepo);
  });
}
