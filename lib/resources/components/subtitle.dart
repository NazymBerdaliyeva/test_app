import 'package:flutter/material.dart';
import 'package:test_app/resources/values/colors.dart';



class SubtitleText extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  final FontWeight fontWeight;
  final double height;

  SubtitleText({this.text, this.margin, this.fontWeight, this.height});
  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: margin,
          child: Text(
            text,
            style: TextStyle(
                color: AppColors.DarkBrown,
                fontWeight: fontWeight,
                fontSize: 14,
                letterSpacing: 0.02,
                height: height),
          ),
        );
  }
}