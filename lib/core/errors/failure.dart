import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int statusCode;

  const Failure({
    required this.message,
    required this.statusCode,
  });

  @override
  List<Object?> get props => [message, statusCode];
}

class APIFailure extends Failure {
  const APIFailure({
    required super.message,
    required super.statusCode,
  });
}
