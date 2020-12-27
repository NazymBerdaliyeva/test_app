import 'package:flutter/material.dart';

class ImageForm extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  ImageForm({this.image,this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          new Radius.circular(25.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
