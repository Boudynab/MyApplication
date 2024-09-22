import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Column, CrossAxisAlignment, ElevatedButton, MainAxisAlignment, Scaffold, SizedBox, StatelessWidget, Text, TextStyle, Widget;
import 'package:flutter_application_2/home_screen.dart';
import 'package:flutter_application_2/shredmethods.dart';

// ignore: must_be_immutable
class ContactsScreen extends StatelessWidget {
  ContactsScreen({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text('My Contacts Screen'),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              goto(
                context: context,
                screen: homescreen(),
              );
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
