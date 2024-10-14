// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:io';
import 'package:flutter/material.dart';
class ConfirmImage extends StatelessWidget {
  const ConfirmImage({super.key,required this.imagefile});
  final File imagefile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(  
     child:  Column(
        children: [
          CircleAvatar(
            radius: 100.0,
            backgroundImage:FileImage(imagefile),
          ),
          SizedBox(
            height: 100.0,
          ),
          ElevatedButton.icon( 
            onPressed: () {
              print(" confrim the image");
            },
            label: Text(
              'confrim image'
              ),
              icon: Icon(Icons.image),
            ),
        ],
      ),
    ),
  );  
  }
}