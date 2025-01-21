import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPassword({
    String email,
    String password,
  });
}
