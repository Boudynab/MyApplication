// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:fluttter_test/collcect_user.dart';
import 'package:fluttter_test/shared_method.dart';

// ignore: must_be_immutable
class homescreen extends StatelessWidget {
  homescreen({super.key});
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("new app"),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image(
                  image: AssetImage(
                    'assets/joker.jpg',
                  ),
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'joker',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  goto(context: context, screen: CollectUserData());
                },
                child: Text(
                  'pass data',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      names[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: names.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
