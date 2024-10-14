import 'package:flutter/material.dart';
import 'package:fluttter_test/contect_screen.dart';
import 'package:fluttter_test/shared_method.dart';

class CollectUserData extends StatelessWidget {
  CollectUserData({super.key});

  // TextEditingController for the name input field
  TextEditingController name = TextEditingController();
  
  // GlobalKey to manage the Form's state
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Collect User Data'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            
            // Input Field for the name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: name, // Binding TextEditingController to the field
                onFieldSubmitted: (value) {}, 
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Field can't be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Colors.orange,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 30),
            
            // Button to pass data
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Navigating to ContactsScreen with the entered name
                  goto(
                    context: context,
                    // Add the required 'name' parameter to the ContactsScreen constructor
                    screen: ContactsScreen(
                      name : name.text
                      ),
                  );
                }
              },
              child: const Text("Pass Data"),
            ),
          ],
        ),
      ),
    );
  }
}
