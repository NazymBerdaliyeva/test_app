import 'package:flutter/material.dart';
import 'package:test_app/components/rating.dart';
import 'package:test_app/components/subtitle.dart';
import 'package:test_app/components/title.dart';

import 'values/colors.dart';
import 'values/constant_text.dart';

class FeedbackForm extends StatelessWidget {
  final String fullName;
  final String image;
  final String date;
  final String rating;
  final String text;

  FeedbackForm({this.fullName,this.image,this.date,this.rating, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 13,
        left: 23,
        right: 24,
      ),
      //height: 244,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            new Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 21),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(
                      child: Image.asset(
                    image,
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  )),
                  radius: 22.5,
                ),
                TitleName(
                  name: fullName,
                  margin: EdgeInsets.only(
                    top: 11,
                    left: 13,
                  ),
                )
              ],
            ),
          ),
          SubtitleText(
            text: text,
            margin: EdgeInsets.only(top: 18, right: 21, left: 21),
            fontWeight: FontWeight.w300,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 21),
                    child: Text(
                        date,
                      style: TextStyle(
                        color: AppColors.DarkBrown,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),),
                Container(
                  margin: EdgeInsets.only(right: 21),
                  child: Rating(
                    rate: rating,
                    fontSize: 12,
                    size: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
