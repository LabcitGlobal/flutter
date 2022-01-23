import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key? key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10.0),
              child: Container(
                  width: width * 0.8,
                  padding: EdgeInsets.all(12.0),
                  child: Text('Card1')),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                  width: width * 0.8,
                  padding: EdgeInsets.all(12.0),
                  child: Text('Hello Cards Ivan')),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                  width: width * 0.8,
                  padding: EdgeInsets.all(12.0),
                  child: Text('Hello Cards Ivan Carvajal')),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.close),
      ),
    );
  }
}
