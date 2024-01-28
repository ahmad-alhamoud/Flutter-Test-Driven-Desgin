
import 'package:dartz/dartz.dart';
import 'package:tdd_clean_architecture/core/errors/failure.dart';
import 'package:tdd_clean_architecture/src/authentication/domain/entities/user.dart';

import '../../../../core/utils/typedef.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUsers();
}
