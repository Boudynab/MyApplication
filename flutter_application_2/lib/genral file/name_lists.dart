import 'package:flutter/material.dart';

class NamesScreen extends StatelessWidget {
  const NamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // color: Colors.red,
        child: ListView.separated(
          itemBuilder: (context, index) => const Text('New Student'),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
