import 'package:flutter/material.dart';
import 'package:flutter_applications/generated/l10n.dart';

class AlertPage extends StatefulWidget {
  AlertPage({Key? key}) : super(key: key);

  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Alert Dialog', style: TextStyle(color: Colors.white)),
          onPressed: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Title'),
                      content: Text('Text Dialog'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop('Ok');
                            },
                            child: Text('Ok')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop('Cancel');
                            },
                            child: Text('Cancel'))
                      ],
                    )).then((value) => print(value));
          },
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
