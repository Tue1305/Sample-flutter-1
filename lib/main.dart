import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  bool isSwitched = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showScaffold(String message) {

    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter - tutorialkart.com'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Switch') ,
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              RaisedButton(
                child: Text('Text Color Changed'),
                textColor: Colors.red,
                onPressed: () {
                  _showScaffold("Hello Tue.");
                },
              ),
            ],
          ),
        )
    );
  }
}