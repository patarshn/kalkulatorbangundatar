import 'package:flutter/material.dart';
import 'dart:async';

import 'package:kalkulatorbangunruang/landingpage.dart';
import 'package:kalkulatorbangunruang/aboutus.dart';
import 'package:kalkulatorbangunruang/persegi.dart';
import 'package:kalkulatorbangunruang/segitiga.dart';
import 'package:kalkulatorbangunruang/persegipanjang.dart';


/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new SplashScreen(),
    );
  }
}*/

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/landingpage' : (BuildContext context) => new LandingPage(),
      '/aboutus' : (BuildContext context) => new AboutUs(),
      '/persegi' : (BuildContext context) => new Persegi(),
      '/segitiga' : (BuildContext context) => new Segitiga(),
      '/persegipanjang' : (BuildContext context) => new PersegiPanjang(),
    },
  ));
}


class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  startTime() async{
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/landingpage');
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset('assets/icon.png'),
            new Text("Kalkulator Bangun Ruang",style: new TextStyle(fontSize: 30.0),),
          ],
        )
      )
    );

  }
}

