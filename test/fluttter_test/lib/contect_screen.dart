import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Column, CrossAxisAlignment, ElevatedButton, MainAxisAlignment, Scaffold, SizedBox, StatelessWidget, Text, TextStyle, Widget;
import 'package:fluttter_test/homescreen.dart';
import 'package:fluttter_test/shared_method.dart';

// ignore: must_be_immutable
class ContactsScreen extends StatelessWidget {
  ContactsScreen({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text('My Contacts Screen'),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              goto(
                context: context,
                screen: homescreen(),
              );
            },
            child: const Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
