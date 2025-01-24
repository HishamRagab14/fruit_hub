import 'package:fruits_hub_app/constants.dart';

class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({required this.name, required this.email, required this.uId});
  toMap(){
    return {
      kName : name,
      kEmail: email,
      kUId : uId,
    };

  }
}
