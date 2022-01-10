import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraController {
  late BuildContext context;
  dynamic _pickImageError;
  final ImagePicker _picker = ImagePicker();
  late final pickedFile;
  // File _imageFile;

  void init(BuildContext context) {
    this.context = context;
  }

  Future selectImage(ImageSource imageSource) async {
    try {
      pickedFile = await _picker.pickImage(source: imageSource);
      // _imageFile = pickedFile;

      if (pickedFile != null) {
        // imageFile = File(pickedFile.path);
      }
    } catch (e) {
      _pickImageError = e;
    }
    Navigator.pop(context);
  }

  void showAlertDialog() {
    Widget galleryButton = ElevatedButton(
      onPressed: () {
        selectImage(ImageSource.gallery);
      },
      child: Text('Gallery', style: TextStyle(color: Colors.white)),
    );

    Widget cameraButton = ElevatedButton(
      onPressed: () {
        selectImage(ImageSource.camera);
      },
      child: Text('Camera', style: TextStyle(color: Colors.white)),
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text('Select Image from'),
      actions: [galleryButton, cameraButton],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
