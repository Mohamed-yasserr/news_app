import 'package:flutter/material.dart';
import 'package:news_app/styles/my%20theme.dart';

class CategoryItem{
  String categoryId;
  String imagePath;
  String title;
  Color backgroundColor;

  CategoryItem({
    required this.categoryId,
    required this.imagePath,
    required this.title,
    required this.backgroundColor,


});
  static List<CategoryItem> getCategoriesList(){
    return [
      CategoryItem(
          categoryId: "sports",
          imagePath: "assets/images/sports.png",
          title: "sports",
          backgroundColor: MyTheme.redColor),
      CategoryItem(
          categoryId: "general",
          imagePath: "assets/images/Politics.png",
          title: "General",
          backgroundColor: MyTheme.darkBlueColor),
      CategoryItem(
          categoryId: "health",
          imagePath: "assets/images/health.png",
          title: "health",
          backgroundColor: MyTheme.pinkColor),
      CategoryItem(
          categoryId: "business",
          imagePath: "assets/images/bussines.png",
          title: "business",
          backgroundColor: MyTheme.brownColor),
      CategoryItem(
          categoryId: "envirnment",
          imagePath: "assets/images/environment.png",
          title: "envirnment",
          backgroundColor: MyTheme.blueColor),
      CategoryItem(
          categoryId: "science",
          imagePath: "assets/images/science.png",
          title: "science",
          backgroundColor: MyTheme.yellowColor),
      CategoryItem(
          categoryId: "technology",
          imagePath: "assets/images/sports.png",
          title: "Technology",
          backgroundColor: MyTheme.redColor),
    ];
  }
}