import 'package:flutter/material.dart';
import 'package:test_app/resources/values/colors.dart';

class PrimaryButton extends StatelessWidget {
  final double height;
  final double width;
  final double top;
  final Function onPressed;
  final EdgeInsets margin;
  final double fontSize;

  PrimaryButton({this.height, this.width, this.top, this.onPressed,this.margin, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.DarkBrown,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(2, 2),
            blurRadius: 4.0,
          ),
        ],
        borderRadius: BorderRadius.all(new Radius.circular(25)),
      ),
      child: FlatButton(
        child: Text(
          'ЗАПИСАТЬСЯ',
          textScaleFactor: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              letterSpacing: 0.02,
             color: Colors.white
             // height: 0.1451
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
