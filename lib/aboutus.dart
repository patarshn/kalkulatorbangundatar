import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tentang Saya", style: new TextStyle(color: Colors.white)),
      ),
      body:new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Nama : Patar Martua Doli Siahaan",
              style: new TextStyle(fontSize: 16.0),
            ),

            new Text(
              "NPM : 1717051051",
              style: new TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}