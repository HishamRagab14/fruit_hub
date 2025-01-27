import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failures.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, UserEntity>> signinWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
  Future addUserData({required UserEntity user});
  Future saveUserData({required UserEntity user});
  Future<Either<Failure, UserEntity>> signinWithApple();
  Future<UserEntity> getUserData({required String uId});
}
