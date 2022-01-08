import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraController {
  late BuildContext context;
  late PickedFile pickedFile;
  File? imageFile;

  void init(BuildContext context) {
    this.context = context;
  }

  Future selectImage(ImageSource imageSource) async {
    pickedFile = (await ImagePicker().getImage(source: imageSource))!;
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
    Navigator.pop(context);
  }

  void showAlertDialog() {
    Widget galleryButton = ElevatedButton(
      onPressed: () {},
      child: Text('Gallery'),
    );

    Widget cameraButton = ElevatedButton(
      onPressed: () {},
      child: Text('Camera'),
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text('Select Image'),
      actions: [galleryButton, cameraButton],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
