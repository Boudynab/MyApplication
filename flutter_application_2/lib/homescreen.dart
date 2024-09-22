import 'package:flutter/material.dart';
import 'package:flutter_application_2/batman.dart';
import 'package:flutter_application_2/joker.dart';
import 'package:flutter_application_2/listscreen.dart';
import 'package:flutter_application_2/shredmethods.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String displayText = 'who are you';
  String imagePath = 'assets/unknown.jpeg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: const Color.fromARGB(255, 137, 137, 137),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(height: 20),
              Text(
                displayText,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      goto(context : context, screen : const batman());
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('Batman'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      goto(context : context ,screen:  joker());
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('Joker'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (displayText == 'who are you') {
                      displayText = 'I know you';
                      imagePath = 'assets/iknow.jpg';
                    } else {
                      displayText = 'who are you';
                      imagePath = 'assets/unknown.jpeg';
                    }
                  });
                },
                child: const Text('Change'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*InkWell
Navigator.push(
  context,
  MaterialPageRoute(

  ),
);
void goro(Required BuildContext context,Rquired Widget screen  ){
}
Nvgitor.pushreplcement();
setstte;
*/