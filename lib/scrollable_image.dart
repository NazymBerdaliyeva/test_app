import 'dart:math';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/image_form.dart';

class ScrollableImage extends StatefulWidget {
  final double height;
  final double width;
  final double marginTop;
  final double fraction;
  final double decoratorWidth;
  final double decoratorHeight;

  ScrollableImage(
      {this.width,
      this.height,
      @required this.marginTop,
      this.fraction,
      @required this.decoratorWidth,
      @required this.decoratorHeight});
  @override
  _ScrollableImageState createState() => _ScrollableImageState();
}

class _ScrollableImageState extends State<ScrollableImage> {
  final _totalDots = 3;
  double _currentPosition = 0.0;
  final _controller = new PageController();

  final List<Widget> _pages = <Widget>[
    ImageForm(
      image: 'assets/images/img1.jpeg',
      height: 202,
      width: 329,
    ),
    ImageForm(
      image: 'assets/images/img2.jpeg',
      height: 202,
      width: 329,
    ),
    ImageForm(
      image: 'assets/images/img3.jpeg',
      height: 202,
      width: 329,
    ),
  ];

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          new PageView.builder(
            onPageChanged: (index) {
              _updatePosition(min(
                ++_currentPosition,
                _totalDots.toDouble(),
              ));
            },
            physics: new AlwaysScrollableScrollPhysics(),
            controller: _controller,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            top: widget.marginTop,
            left: MediaQuery.of(context).size.width / widget.fraction,
            child: DotsIndicator(
              dotsCount: _totalDots,
              position: _currentPosition,
              decorator: DotsDecorator(
                activeColor: Colors.white,
                activeSize:
                    Size(widget.decoratorWidth, widget.decoratorHeight * 2),
                size: Size(widget.decoratorWidth, widget.decoratorHeight),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              onTap: (pos) {
                setState(() => _currentPosition = pos);
              },
            ),
          ),
        ],
      ),
    );
  }
}
