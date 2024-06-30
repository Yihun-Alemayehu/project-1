import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final int id;
  final String createdAt;
  final String name;
  final String avatar;

  const UserEntity({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  factory UserEntity.empty(){
    return const UserEntity(
      id: 0,
      createdAt: 'createdAt',
      name: 'name',
      avatar: 'avatar',
    );
  }
  
  @override
  List<Object?> get props => [id];
}
