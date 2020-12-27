import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final  double height;
  final double width;
  final EdgeInsets margin;
  RoundedContainer({this.child, this.color, this.width, this.height, this.margin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(new Radius.circular(20)),
      ),
      child: child,
    );
  }
}
