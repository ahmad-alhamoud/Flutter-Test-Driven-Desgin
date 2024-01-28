
import 'package:dartz/dartz.dart';
import 'package:tdd_clean_architecture/core/errors/failure.dart';
import 'package:tdd_clean_architecture/src/authentication/domain/entities/user.dart';

typedef ResultFuture<T> = Future<Either<Failure,T>> ;

typedef ResultVoid = ResultFuture<void> ;


typedef DataMap = Map<dynamic,String> ;