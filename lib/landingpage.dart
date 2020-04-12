import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Kalkulator Bangun Ruang",style: new TextStyle(color: Colors.white)),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: new Text(
                "Pilih Menu", 
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  )
                ),
            ),
            

            new SizedBox(
              width: double.infinity,
              child: new RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/persegi');
                },
                child: new Text("Luas Persegi"),
              ),
            ),

            new SizedBox(
              width: double.infinity,
              child: new RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/segitiga');
                },
                child: new Text("Luas Segitiga"),
              ),
            ),

            new SizedBox(
              width: double.infinity,
              child: new RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/persegipanjang');
                },
                child: new Text("Luas Persegi Panjang"),
              ),
            ),

            new SizedBox(
              width: double.infinity,
              child: new RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/aboutus');
                },
                child: new Text("Tentang Saya"),
              ),
            ),

            new SizedBox(
              width: double.infinity,
              child: new RaisedButton(
                onPressed: (){
                  SystemNavigator.pop();
                },
                child: new Text("Keluar"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}