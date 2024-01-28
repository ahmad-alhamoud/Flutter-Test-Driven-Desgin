
import 'package:equatable/equatable.dart';
import 'package:tdd_clean_architecture/core/usecase/usecase.dart';
import 'package:tdd_clean_architecture/src/authentication/domain/entities/user.dart';
import 'package:tdd_clean_architecture/src/authentication/domain/repositories/authentication_repository.dart';

import '../../../../core/utils/typedef.dart';

class GetUsers extends UsecaseWithOutParams<List<User>> {
  const GetUsers(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture<List<User>> call() async => _repository.getUsers();
}
