import 'package:fruits_hub_app/features/authentication/domain/entites/user_entity.dart';

abstract class DatabaseService {

  Future<void> addData(
      {required String path, required Map<String, dynamic> data});
  Future<UserEntity> getUserData({required String path, required String uId});
}



