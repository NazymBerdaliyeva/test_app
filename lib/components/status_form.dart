import 'package:flutter/material.dart';
import 'package:test_app/components/values/colors.dart';

class StatusForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      width: 74,
      decoration: BoxDecoration(
        color: AppColors.LightPink,

      ),
      child: Center(
        child: Text(
          'Новинка',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.02,
          ),
        ),
      ),
    );
  }
}
