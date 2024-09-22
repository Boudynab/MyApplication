import 'package:flutter/material.dart';
class joker extends StatelessWidget {
  const joker({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('joker'),
        backgroundColor: const Color.fromARGB(255, 4, 255, 0),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top : 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/joker.jpg'),
              ),
              Text(
                'you are the joker',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
