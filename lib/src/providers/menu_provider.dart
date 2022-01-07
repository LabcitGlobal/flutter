import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider {
  List<dynamic> items = [];
  MenuProvider() {}

  Future<List<dynamic>> loadItems() async {
    final menu = await rootBundle.loadString('assets/json/menu.json');
    Map map = json.decode(menu);
    this.items = map['routes'];
    return items;
  }
}
