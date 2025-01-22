import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: $e and code is  ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الإلكتروني مستخدم بالفعل.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من الاتصال بالانترنت.');
      } else {
        throw CustomException(message: 'حدث خطأ أثناء إنشاء الحساب.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: $e');
      throw CustomException(message: 'حدث خطأ أثناء إنشاء الحساب.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'الرقم السرى أو البريد الاليكترونى غير صحيح.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'الرقم السرى أو البريد الاليكترونى غير صحيح.');
      } else {
        throw CustomException(message: 'حدث خطأ أثناء تسجيل الدخول.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: $e');
      throw CustomException(message: 'حدث خطأ أثناء تسجيل الدخول.');
    }
  }

  Future<User> signInWithGoogle() async {
    try {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
  
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  
  return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
} on FirebaseAuthException catch (e) {
  if(e.code == 'account-exists-with-different-credential'){
    throw CustomException(message: 'حساب موجود بالفعل.');
  } else {
    throw CustomException(message: 'حدث خطأ أثناء تسجيل الدخول.');
  }
}
  }
}
