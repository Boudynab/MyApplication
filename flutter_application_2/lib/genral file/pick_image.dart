import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/genral%20file/confirm_image.dart';
import 'package:flutter_application_2/shredmethods.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatelessWidget {
  const PickImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Image'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var imagepicker = ImagePicker();
            var imagepicked =
                await imagepicker.pickImage(
                  source: ImageSource.gallery
                );
                if (imagepicked == null){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text(
                      'no image selected'
                      ),
                      backgroundColor: Colors.yellow,
                   ),
                  );
                } else{
                  var imagefile=File(
                imagepicked.path
              );
                goto(
                  context: context,
                  screen: ConfirmImage(imagefile: imagefile),
                );

                }
          },
          child: const Text('Pick an Image'),
        ),
      ),
    );
  }
}
