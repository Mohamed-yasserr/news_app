import 'package:flutter/material.dart';
import 'package:news_app/model/Category_item.dart';
import 'package:news_app/styles/my%20theme.dart';

class CategoryItemWidget extends StatelessWidget {
 int index;
 CategoryItem categoryItem;
 CategoryItemWidget({required this.categoryItem,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categoryItem.backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
          bottomLeft: Radius.circular(index %2 ==0? 18:0 ),
          bottomRight: Radius.circular(index %2 ==0? 0:18),
        ),
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Image.asset(categoryItem.imagePath,height: 100,),
        Text(categoryItem.title,style: TextStyle(
          color: MyTheme.whiteColor,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),),
      ],
    ),
    );

  }
}
