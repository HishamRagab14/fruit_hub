import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(name: json[kName], email: json[kEmail], uId: json[kUId]);
  }
  // factory UserModel.fromEntity(UserEntity user) {
  //   return UserModel(
  //     name: user.name,
  //     email: user.email,
  //     uId: user.uId,
  //   );
  // }
  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      uId: user.uId,
    );
  }
  toMap() {
    return {
      kName: name,
      kEmail: email,
      kUId: uId,
    };
  }
}
