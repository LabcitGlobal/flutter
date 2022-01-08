import 'package:flutter/material.dart';

import 'package:flutter_applications/src/pages/camera/camera_page.dart';
import 'package:flutter_applications/src/providers/menu_provider.dart';
import 'package:flutter_applications/utils/icons.dart';
import 'package:flutter_applications/utils/pallete.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _imageLogo(),
      ),
      body: _loadMenu(),
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
          children: _itemsMenu(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _itemsMenu(List<dynamic>? data, BuildContext context) {
    List<Widget> list = [];
    data?.forEach((element) {
      final tempWidget = ListTile(
        title: Text(element['text']),
        leading: myIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: MyColor.primaryColor,
        ),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return CameraPage();
          // });
          // Navigator.push(context, route);
          Navigator.pushNamed(context, element['route']);
        },
      );
      list
        ..add(tempWidget)
        ..add(Divider());
    });
    return list;
  }
}
