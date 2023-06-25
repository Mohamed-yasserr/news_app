import 'package:flutter/material.dart';
import 'package:news_app/styles/my%20theme.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              color: MyTheme.primaryLightColor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Center(
                child: Text(
                  'News App!',
                  style: TextStyle(
                    color: MyTheme.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,),
                ),
              )),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.list,size: 30,color: MyTheme.blackColor,),
                  SizedBox(width: 12,),
                  Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: MyTheme.blackColor),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.settings,size: 30,color: MyTheme.blackColor,),
                  SizedBox(width: 12,),
                  Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: MyTheme.blackColor),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
