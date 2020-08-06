import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: FlatButton(
            onPressed: () {
              print('hello');
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: Text('MENU'),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hello');
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
