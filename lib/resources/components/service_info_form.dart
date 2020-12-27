import 'package:flutter/material.dart';
import 'package:test_app/resources/values/colors.dart';
import 'package:test_app/resources/values/constant_text.dart';

import 'row_data.dart';
import 'scrollable_image.dart';


class ServiceInfoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, left: 34, right: 34),
      height: 307,
      width: 300,
      decoration: BoxDecoration(
          color: AppColors.LightGrey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScrollableImage(
            width: 300,
            height: 146,
            marginTop: 125,
            fraction: 4.1,
            decoratorHeight: 1.7,
            decoratorWidth: 17.25,
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 24),
            child: Text(
              'Маркетолог',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  height: 0.2176,
                  letterSpacing: 0.02),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 11, left: 24, right: 31),
            width: 245,
            height: 71,
            child: Text(
              ConstantText.description,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: 0.02),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 37),
            child: RowData(
              price: '16 USD',
              duration: '2ч - 2ч 15мин',
            ),
          )
        ],
      ),
    );
  }
}
