import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttter_test/firestore_usage/firestore_functions.dart';
import 'package:fluttter_test/firestore_usage/user_model.dart';


class GetUserName extends StatelessWidget {
  final String documentId;

  const GetUserName(this.documentId, {super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: FirestoreFunctions().getUser(documentId: documentId),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          UserModel user=UserModel().fromMap(data :data);

          return Text("firebase data ${user.name} ${user.phonenumber} ${user.age}");
        }

        return const Text("loading");
      },
    );
  }
}
