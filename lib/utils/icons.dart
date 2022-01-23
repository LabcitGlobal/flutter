import 'package:flutter/material.dart';
import 'package:flutter_applications/utils/pallete.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'camera': Icons.camera,
  'videocam_rounded': Icons.videocam_rounded,
  'other': Icons.add_comment,
  'cards': Icons.card_giftcard
};

Icon myIcon(String name) {
  return Icon(_icons[name], color: MyColor.primaryColor);
}
