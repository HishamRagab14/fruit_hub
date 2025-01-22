import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:fruits_hub_app/core/errors/failures.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/features/authentication/data/models/user_model.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(
          e.message,
        ),
      );
    } catch (e) {
      log('Exception in authRepoImpl.createUserWithEmailAndPassword: $e');
      return Left(
        ServerFailure(
          'حدث خطأ أثناء إنشاء الحساب.',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in authRepoImpl.signInWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ أثناء تسجيل الدخول.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(e.message),
      );
    } catch (e) {
      log('Exception in authRepoImpl.signinWithGoogle: $e');
      return Left(ServerFailure('حدث خطأ أثناء تسجيل الدخول.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log('Exception in authRepoImpl.signInWithFacebook: $e');
      return left(ServerFailure('حدث خطأ أثناء تسجيل الدخول.'));
    }
  }
}
