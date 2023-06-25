import 'package:flutter/material.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/home/splash_screen.dart';
import 'package:news_app/styles/my%20theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes:{
      HomeScreen.routeName: (_)=> HomeScreen(),
      SplashScreen.routeName: (_)=> SplashScreen(),
    } ,
    initialRoute:SplashScreen.routeName,
      theme:MyTheme.lightTheme ,
      themeMode:ThemeMode.light ,

    );
  }
}
