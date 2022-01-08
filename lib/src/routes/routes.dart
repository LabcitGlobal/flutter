import 'package:flutter/material.dart';

import 'package:flutter_applications/src/pages/alert_page.dart';
import 'package:flutter_applications/src/pages/avatar_page.dart';
import 'package:flutter_applications/src/pages/camera/camera_page.dart';
import 'package:flutter_applications/src/pages/home_page.dart';
import 'package:flutter_applications/src/pages/other_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'camera': (BuildContext context) => CameraPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'other': (BuildContext context) => OtherPage(),
  };
}
