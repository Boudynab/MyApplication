import 'package:flutter/material.dart';
class batman extends StatelessWidget {
  const batman({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('batman'),
        backgroundColor: const Color.fromARGB(255, 108, 108, 108),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top : 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/batman.jpeg'),
              ),
              Text(
                'you are batman',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
