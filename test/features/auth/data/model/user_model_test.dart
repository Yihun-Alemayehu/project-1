import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:project_1/features/auth/data/model/user_model.dart';
import 'package:project_1/features/auth/domain/entities/user_entity.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tModel = UserModel.empty();
  test('should be a subclass of [UserEntity]', () {
    // Arrange

    // Act

    // Assert
    expect(tModel, isA<UserEntity>());
  });
  final tJson = fixture('user.json');
  final tMap = jsonDecode(tJson) as Map<String, dynamic>;
  group('fromMap', () {
    test('Should return [UserModel] with the right data', () {
      // Arrange

      // Act
      final result = UserModel.fromMap(tMap);

      // Assert
      expect(result, equals(tModel));
    });
  });
}
