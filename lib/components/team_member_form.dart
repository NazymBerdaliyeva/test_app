import 'package:flutter/material.dart';
import 'package:test_app/components/values/colors.dart';

import 'image_form.dart';
import 'primary_button.dart';

class TeamMemberForm extends StatelessWidget {
  final String image;
  final String name;

  TeamMemberForm({this.name, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 133,
      margin: EdgeInsets.only(
          right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(2, 2),
            blurRadius: 12.0,
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageForm(
            height: 124,
            width: 133,
            image: image,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 21,
              bottom: 12
            ),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  letterSpacing: 0.02,
                color: AppColors.DarkBrown
                  ),
            ),
          ),
          PrimaryButton(
            height: 32,
            width: 133,
            fontSize:12,
          )
        ],
      ),
    );
  }
}
