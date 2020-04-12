import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget{
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga>{
  double _luas = 0;
  final alas = TextEditingController();
  final tinggi = TextEditingController();
  
  void _hitungLuas(alas,tinggi){
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _luas = (double.parse(alas.text)*double.parse(tinggi.text))/2.0;
    });
  }

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Luas Segitiga", style: new TextStyle(color: Colors.white)),
      ),
      body:new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Kalkulator Luas Persegi", style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),

            new SizedBox(
              width: double.infinity,
              child: new TextFormField(
                decoration: new InputDecoration(hintText: 'Alas'),
                keyboardType: TextInputType.number,
                controller: alas,
              ),
            ),

            new SizedBox(
              width: double.infinity,
              child: new TextFormField(
                decoration: new InputDecoration(hintText: 'Tinggi'),
                keyboardType: TextInputType.number,
                controller: tinggi,
              ),
            ),


            new RaisedButton(
              onPressed: (){
                _hitungLuas(alas,tinggi);
              },
              child: new Text("Hitung Luas Segitiga"),
            ),
            new Text(
              '$_luas',
              style: Theme.of(context).textTheme.display1,
            ),  
          ],
        ),
      ),
    );
  }
}