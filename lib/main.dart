import 'package:flutter/material.dart';
import 'package:flutter_applications/src/pages/camera_page.dart';
import 'package:flutter_applications/utils/parameter.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: _imageLogo(),
        ),
        body: Column(
          children: [Text('data'), _imageLogo(), _buttonMenu()],
        ),
      ),
    );
  }

  Widget _buttonMenu() {
    return Container();
  }

  Widget _imageLogo() {
    return Container(
      width: 100.0,
      child: Image(image: AssetImage('assets/img/logo.png')),
    );
  }
}
