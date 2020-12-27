import 'package:flutter/material.dart';
import 'package:test_app/components/values/colors.dart';
import 'package:test_app/feedback_view.dart';
import 'package:test_app/scrollable_image.dart';

import 'services_view.dart';
import 'team_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Winchester'), //Dreamy
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
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColors.DarkBrown,
              fontSize: 24),
        ),
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColors.DarkBrown,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.favorite_border,
              color: AppColors.DarkBrown,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1349, // 1486,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(new Radius.circular(52)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 23, right: 23, top: 20),
                    child: ScrollableImage(
                      height: 202,
                      marginTop: 170,
                      fraction: 4,
                      decoratorHeight: 2.09,
                      decoratorWidth: 32.71,
                    ),
                  ),
                  ServicesView(),
                  TeamView(),
                ],
              ),
            ),
            FeedbackView(),
          ],
        ),
      ),
    );
  }
}
