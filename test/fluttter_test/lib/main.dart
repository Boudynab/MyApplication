import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttter_test/firestore_usage/firestore_new_functions.dart';
import 'package:fluttter_test/firestore_usage/user_model.dart';
import 'firebase_options.dart';


// Ensure Firebase is initialized before starting the app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Firestore Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddUser(
        user: UserModel(name: "abdo", phonenumber: "10923092", age: 21),
      ),
    );
  }
}