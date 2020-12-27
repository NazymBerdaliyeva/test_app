import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final String rate;
  final double fontSize;
  final double size;

  Rating({this.rate, this.fontSize, this.size});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(left: 30, right: 9),
            child: Icon(
              Icons.star,
              color: Colors.amber,
              size: size,
            )),
        Container(
          margin: EdgeInsets.only(right: 9),
          child: Text(
            rate,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.02,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 9),
          child: Text(
            'Отлично',
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.02,
            ),
          ),
        ),
      ],
    );
  }
}
