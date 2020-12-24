import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/image_form.dart';

class ScrollableImage extends StatefulWidget {
  @override
  _ScrollableImageState createState() => _ScrollableImageState();
}

class _ScrollableImageState extends State<ScrollableImage> {
  final _totalDots = 3;

  double _currentPosition = 0.0;

  final decorator = DotsDecorator(
    activeColor: Colors.red,
    activeSize: Size(22.0, 10.0),
    size: Size(22.0, 10.0),
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25.0))),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: PageScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Stack(
        children: [
          Row(
            children: [
              ImageForm('assets/images/img1.jpeg'),
              ImageForm('assets/images/img2.jpeg'),
              ImageForm('assets/images/img3.jpeg'),
            ],
          ),
          Positioned(
            top: 100,
            left: 150,
            child: DotsIndicator(
              dotsCount: _totalDots,
              position: _currentPosition,
              reversed: true,
              decorator: decorator,
            ),
          ),

        ],
      ),
    );
  }
}
