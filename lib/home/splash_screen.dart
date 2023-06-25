import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/styles/my%20theme.dart';

class SplashScreen extends StatefulWidget {
static const String routeName='SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Timer(Duration(seconds: 2), () {
       Navigator.pushReplacementNamed(context, HomeScreen.routeName);
     });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: MyTheme.whiteColor,
      child: Stack(
        alignment: Alignment.center,
        children: [

          Image.asset("assets/images/pattern.png",width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
          Image.asset("assets/images/logo.png"),
        ],
      ),
    );
  }
}
