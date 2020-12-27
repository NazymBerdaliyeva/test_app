import 'package:flutter/material.dart';
import 'package:test_app/resources/values/colors.dart';

import 'rounded_container.dart';
import 'row_data.dart';

class ServiceShortInfo extends StatefulWidget {
  @override
  _ServiceShortInfoState createState() => _ServiceShortInfoState();
}

class _ServiceShortInfoState extends State<ServiceShortInfo> {
  String _selectedService;

  List<String> _serviceList = <String>[
    'Уборка',
    'Электрики',
    'Мебельщики',
    'Сантехники',
    'Другое',
  ];
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      height: 69,
      margin: EdgeInsets.only(top: 10, left: 34, right: 34),
      color: AppColors.LightGrey,
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only( left: 24),
            height: 20.75,
            //width: 189,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text(
                  "Service name",
                  style: TextStyle(
                      color: AppColors.DarkBrown,
                      fontSize: 18,
                      letterSpacing: 0.02,
                      fontWeight: FontWeight.w700),
                ),
                value: _selectedService,
                onChanged: (String value) {
                  setState(() {
                    _selectedService = value;
                  });
                },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.DarkBrown,
                  size: 15,
                ),
                itemHeight: 50,
                items: _serviceList.map((String service) {
                  return DropdownMenuItem<String>(
                    value: service,
                    child: Text(
                      service,
                      style: TextStyle(
                          color: AppColors.DarkBrown,
                          fontSize: 18,
                          letterSpacing: 0.02,
                          fontWeight: FontWeight.w700),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
            ),
              child: RowData(price: '8 USD', duration: '40мин - 1ч 30мин'),)
        ],
      ),
    );
  }
}
