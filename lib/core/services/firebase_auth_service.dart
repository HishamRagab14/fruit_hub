import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';

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
        throw CustomException(
            message: 'البريد الإلكتروني مستخدم بالفعل.');
      } else if(e.code =='network-request-failed'){
        throw CustomException(message: 'تأكد من الاتصال بالانترنت.');
      } 
      else {
        throw CustomException(  
            message: 'حدث خطأ أثناء إنشاء الحساب.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: $e');
      throw CustomException(
          message: 'حدث خطأ أثناء إنشاء الحساب.');
    }
  }
}
