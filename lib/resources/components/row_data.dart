import 'package:flutter/material.dart';
import 'package:test_app/resources/components/subtitle.dart';

class RowData extends StatelessWidget {
  final String duration;
  final String price;

  RowData({@required this.price, @required this.duration});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SubtitleText(text:duration, margin: EdgeInsets.only(left: 24),fontWeight: FontWeight.w500, height: 0.1648,),
        Container(
          margin: EdgeInsets.only(right: 24),
          child: Text(
            price,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                letterSpacing: 0.02,
                height: 0.1648),
          ),
        )
      ],
    );
  }
}
