import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:fruits_hub_app/core/errors/failures.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/core/utils/backend_endpoint.dart';
import 'package:fruits_hub_app/features/authentication/data/models/user_model.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_hub_app/features/authentication/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl(
      {required this.databaseService, required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);
      return Right(
        userEntity,
      );
    } on CustomException catch (e) {
      await deleteUser(user);
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

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
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
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);

      return Right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
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
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log('Exception in authRepoImpl.signInWithFacebook: $e');
      return left(ServerFailure('حدث خطأ أثناء تسجيل الدخول.'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithApple();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(
        user: userEntity,
      );
      return right(
        userEntity,
      );
    } catch (e) {
      await deleteUser(user);
      log('Exception in authRepoImpl.signinWithApple: $e');
      return left(ServerFailure('حدث خطأ أثناء تسجيل الدخول.'));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
        path: BackendEndpoint.addUserData, data: user.toMap());
  }
}
