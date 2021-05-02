import 'package:cars_app/pages/Signin.dart';
import 'package:cars_app/pages/Signup.dart';
import 'package:cars_app/pages/home.dart';
import 'package:cars_app/pages/modelz.dart';
import 'package:cars_app/pages/my_gallery.dart';
import 'package:cars_app/pages/setting.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Colors.white,
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          
      ),

      home: SignIn(),
       routes: <String, WidgetBuilder>{
       '/Signup': (BuildContext context) => SignUp(),
       '/Signin': (BuildContext context) => SignIn(),
       '/Homepage':(BuildContext context) => HomePage(),
       '/Gallery': (BuildContext context) => Gallery(),
       '/Model': (BuildContext context) => Models(),
       '/Setting': (BuildContext context) => Setting(),



      },
      
    );
  }
}