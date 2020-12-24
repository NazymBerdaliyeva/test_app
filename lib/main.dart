import 'package:flutter/material.dart';
import 'package:test_app/scrollable_image.dart';

import 'components/image_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Winchester'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: ScrollableImage(),
      ),
    );
  }
}
