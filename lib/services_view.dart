import 'package:flutter/material.dart';

import 'components/rating.dart';
import 'components/rounded_container.dart';
import 'components/service_info_form.dart';
import 'components/service_short_info.dart';
import 'components/status_form.dart';
import 'components/title.dart';
import 'components/values/colors.dart';
import 'time_table_form.dart';

class ServicesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 809,
      margin: EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(8, 0, 0, 0),
            offset: Offset(0, 0),
            blurRadius: 12.0,
          ),
        ],
        borderRadius: BorderRadius.all(new Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 192,
            height: 23,
            margin: EdgeInsets.only(
              top: 41,
              left: 31,
            ),
            child: Text(
              'Winchester',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.w700, height: 0.3385, color: AppColors.DarkBrown),
            ),
          ),
          Container(
            width: 192,
            height: 23,
            margin: EdgeInsets.only(
              top: 12,
              left: 31,
            ),
            child: Text(
              'Ожешко 39/1',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 0.2119,
                letterSpacing: 0.02,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Rating(rate: '3.9', fontSize: 18, size: 18,),
              StatusForm(),
            ],
          ),
          TimeTableForm(),
          TitleName(name: 'Услуги', margin: EdgeInsets.only(top: 39, left: 31),),
          ServiceInfoForm(),
          ServiceShortInfo(),
          ServiceShortInfo(),
          RoundedContainer(
            color: AppColors.LightGrey,
            height: 53,
            width: 300,
            margin: EdgeInsets.only(top: 10, left: 34, right: 34),
            child: Center(
              child: Text(
                'ВСЕ УСЛУГИ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.DarkBrown,
                    fontSize: 18,
                    letterSpacing: 0.02,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
