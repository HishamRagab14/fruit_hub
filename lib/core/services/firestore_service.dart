import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    // await firestore.collection(path).add(data);
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();
    // return UserModel.fromJson(data.data() as Map<String, dynamic>);
    return data.data() as Map<String, dynamic>;
  }
  
  @override
  Future<bool> checkIfDataExists({required String path, required String documentId}) async{
    var data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
