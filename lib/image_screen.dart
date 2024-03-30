import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File? image;

  pickImage(ImageSource source) {
    AppImagePicker(source: source).pick(onPick: (File? image) {
      setState(() {
        this.image = image;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tomato Disease"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null) Image.file(image!),
          SizedBox(height: 20),
          Text(
            "Result:          ",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  pickImage(ImageSource.camera);
                },
                child: Text("Camera"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  pickImage(ImageSource.gallery);
                },
                child: Text("Gallery"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
