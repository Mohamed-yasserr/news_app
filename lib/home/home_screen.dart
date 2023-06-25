

import 'package:flutter/material.dart';
import 'package:news_app/category/category_details.dart';
import 'package:news_app/category/category_widget.dart';
import 'package:news_app/home/home_drawer.dart';
import 'package:news_app/model/Category_item.dart';
import 'package:news_app/styles/my%20theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:MyTheme.whiteColor ,
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/pattern.png"),
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title:Text('News App') ,
        ),
        drawer: Drawer(
          child:HomeDrawer(),
        ),
        body:
        selectedIndex == null?
        CategoryWidget(onCategoryItemCliceked:onCategoryItemClicked):CategoryDetails() ,

      ),
    );
  }

  int? selectedIndex =null;

  void onCategoryItemClicked(int index){
selectedIndex = index;
setState(() {
  
});
  }
}
