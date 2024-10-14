import 'package:flutter/material.dart';
//import 'package:flutter_application_2/genral%20file/calc.dart';
// Import the generated file
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_2/home_screen.dart';
import 'firebase_options.dart';


//7import 'package:flutter_application_2/home_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(_MyApp());
}
class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home:  homescreen(),
    );
  }
}
