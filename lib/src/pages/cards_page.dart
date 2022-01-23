import 'package:flutter/material.dart';
import 'package:flutter_applications/utils/pallete.dart';

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
      appBar: AppBar(
          title: Text('Cards', style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              _createCard(),
              _createCardColor(),
              _createCardImage(),
              _createCardImage(),
            ],
          ),
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

  Widget _createCard() {
    return Card(
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('I am a Card',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            SizedBox(height: 20.0),
            Text(
                'Excepteur deserunt exercitation consequat ad excepteur ullamco sit ea fugiat quis ullamco. Ipsum irure excepteur aliquip cupidatat adipisicing aute et aliqua amet. Consequat non aliqua ut velit reprehenderit laboris commodo laborum eu sunt pariatur do sint pariatur. Aute dolore velit commodo dolore proident anim non adipisicing. Excepteur incididunt quis aute nostrud minim tempor proident amet cupidatat occaecat.'),
          ],
        ),
      ),
    );
  }

  Widget _createCardColor() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: MyColor.primaryColor,
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('I am a color Card',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: MyColor.primaryTextColor)),
            SizedBox(height: 20.0),
            Text(
                'Excepteur deserunt exercitation consequat ad excepteur ullamco sit ea fugiat quis ullamco. Ipsum irure excepteur aliquip cupidatat adipisicing aute et aliqua amet. Consequat non aliqua ut velit reprehenderit laboris commodo laborum eu sunt pariatur do sint pariatur. Aute dolore velit commodo dolore proident anim non adipisicing. Excepteur incididunt quis aute nostrud minim tempor proident amet cupidatat occaecat.',
                style: TextStyle(color: MyColor.primaryTextColor)),
          ],
        ),
      ),
    );
  }

  Widget _createCardImage() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5.0,
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: FadeInImage(
                placeholder: AssetImage('assets/img/loading.gif'),
                image: NetworkImage(
                    'https://cf.ltkcdn.net/gatos/images/std/236641-800x515r1-etapas-desarrollo-gatitos.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('I am a image Card'),
            ),
          ],
        ),
      ),
    );
  }
}
