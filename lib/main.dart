import 'package:flutter/material.dart';
import 'package:flutter_applications/utils/pallete.dart';
import 'package:flutter_applications/src/routes/routes.dart';
import 'package:flutter_applications/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: MyColor.primaryMaterialColor,
      ),
      initialRoute: 'home',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        );
      },
    );
  }
}
