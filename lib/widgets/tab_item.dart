import 'package:flutter/material.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/styles/my%20theme.dart';

class TabItem extends StatelessWidget {
  Source source;

  bool isSelected;

  TabItem({required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
      decoration: BoxDecoration(
          color: isSelected ? MyTheme.primaryLightColor : Colors.transparent,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: MyTheme.primaryLightColor)),
      child: Text(
        source.name ?? '',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: isSelected ? MyTheme.whiteColor : MyTheme.primaryLightColor),
      ),
    );
  }
}
