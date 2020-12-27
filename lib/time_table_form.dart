import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_app/components/values/colors.dart';

class TimeTableForm extends StatefulWidget {
  @override
  _TimeTableFormState createState() => _TimeTableFormState();
}

class _TimeTableFormState extends State<TimeTableForm> {
  List<String> _timeList = <String>[
    '10:00 - 21:00',
    '11:00 - 21:00',
    '12:00 - 21:00',
    '13:00 - 21:00',
    '14:00 - 21:00',
    '15:00 - 21:00',
    '16:00 - 21:00',
  ];

  String _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 192,
      height: 28,
      margin: EdgeInsets.only(
        left: 31,
        top: 28
      ),
      decoration: BoxDecoration(
        color: AppColors.DarkBrown,
        borderRadius: BorderRadius.all(new Radius.circular(20)),
      ),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: 13
            ),
            child: Icon(
              Icons.access_time,
              color: Colors.white,
              size: 11,
            ),
          ),
          Container(
            height: 11,
            width: 135.4,
            margin: EdgeInsets.only(
              left: 8,
              // right: 10,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text(
                  "Открыто 10:00 -21:00",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                value: _selectedTime,
                onChanged: (String value) {
                  setState(() {
                    _selectedTime = value;
                  });
                },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 15,
                ),
                itemHeight: 100,
                dropdownColor: Colors.brown,
                items: _timeList.map((String time) {
                  return DropdownMenuItem<String>(
                    value: time,
                    child: Text(
                      'Открыто $time',
                      textScaleFactor: 1,
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
