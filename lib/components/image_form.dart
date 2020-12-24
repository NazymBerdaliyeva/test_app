import 'package:flutter/material.dart';

class ImageForm extends StatelessWidget {
  final String image;

  ImageForm(this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 23,
        right: 23,
      ),
      width: 329,
      height: 202,
      decoration: BoxDecoration(
        color: Colors.amber,
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
