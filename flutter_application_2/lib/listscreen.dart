import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ListScreen extends StatelessWidget {
  ListScreen({super.key});
  List<String> names = [
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
    'Ahmed',
    'Mahmoud',
    'Omar',
    'Saeed',
    'Asem',
    'Belal',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              names[index],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: names.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}