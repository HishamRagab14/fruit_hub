import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failures.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({ String email, String password}) {
    
    throw UnimplementedError();
  }


}