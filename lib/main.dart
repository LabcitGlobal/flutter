import 'package:flutter/material.dart';
import 'package:flutter_applications/src/pages/camera_page.dart';
import 'package:flutter_applications/src/providers/menu_provider.dart';
import 'package:flutter_applications/utils/icons.dart';
import 'package:flutter_applications/utils/pallete.dart';

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
        body: _loadMenu(),
      ),
    );
  }

  Widget _imageLogo() {
    return Container(
      width: 100.0,
      child: Image(image: AssetImage('assets/img/logo.png')),
    );
  }

  Widget _loadMenu() {
    MenuProvider menuProvider = new MenuProvider();
    return FutureBuilder(
      future: menuProvider.loadItems(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsMenu(snapshot.data),
        );
      },
    );
  }

  List<Widget> _itemsMenu(List<dynamic>? data) {
    List<Widget> list = [];
    data?.forEach((element) {
      final tempWidget = ListTile(
        title: Text(element['text']),
        leading: myIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: MyColor.primaryColor,
        ),
        onTap: () {},
      );
      list
        ..add(tempWidget)
        ..add(Divider());
    });
    return list;
  }
}
