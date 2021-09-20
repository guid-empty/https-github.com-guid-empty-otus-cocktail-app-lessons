import 'package:flutter/material.dart';
import 'package:homework/core/colors.dart';

class InfoTitleValueWidget extends StatelessWidget {

  final String _title;
  final String _value;

  InfoTitleValueWidget(
    this._title,
    this._value
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            _title,
            style: TextStyle(fontSize: 14, color: AppColors.TitleTextColor),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
          decoration: BoxDecoration(
            color: AppColors.ValueBackgroundColor,
            shape: BoxShape.rectangle, 
            borderRadius: BorderRadius.all(Radius.circular(30))           
          ),
          child: Text(
            _value,              
            style: TextStyle(
              fontSize: 15, 
              color: Colors.white,                
            ),
          )               
        )       
      ],
    );
  }
}