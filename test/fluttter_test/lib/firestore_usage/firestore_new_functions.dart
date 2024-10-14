import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttter_test/firestore_usage/firestore_functions.dart';
import 'package:fluttter_test/firestore_usage/firestore_read.dart';
import 'package:fluttter_test/firestore_usage/user_model.dart';
import 'firebase_options.dart';
// Import the firebase_core and cloud_firestore plugin
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  UserModel user;

  AddUser({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection

    return Scaffold(
      appBar: AppBar(
        title: const Text('firebase'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => FirestoreFunctions().createUser(
               user: user,
              ),
              child: const Text('Add User'),
            ),
            const SizedBox(height: 20),
            const GetUserName("MHLTfaWPH4WP5fdG8mRt"),
          ],
        ),
      ),
    );
  }
}
