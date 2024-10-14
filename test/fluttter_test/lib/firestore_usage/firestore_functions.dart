import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttter_test/firestore_usage/user_model.dart';

class FirestoreFunctions {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> createUser({required UserModel user}) async {
    await users
        .add(user.toMap(user: user))  // Corrected: directly pass the result of toMap()
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<DocumentSnapshot> getUser({required String documentId}) async {
    return await users.doc(documentId).get();
  }
}
