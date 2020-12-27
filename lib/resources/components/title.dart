import 'package:flutter/material.dart';
import 'package:test_app/resources/values/colors.dart';

class TitleName extends StatelessWidget {
  final String name;
  final EdgeInsets margin;
  TitleName({this.name, this.margin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        name,
        style: TextStyle(
            color: AppColors.DarkBrown,
            fontSize: 24,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.02,
            height: 0.2902),
      ),
    );
  }
}
