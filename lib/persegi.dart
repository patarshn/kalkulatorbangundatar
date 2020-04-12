import 'package:flutter/material.dart';

class Persegi extends StatefulWidget{
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi>{
  double _luas = 0;
  final sisi = TextEditingController();
  
  void _hitungLuas(sisi){
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _luas = double.parse(sisi.text)*double.parse(sisi.text);
    });
  }

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Luas Persegi", style: new TextStyle(color: Colors.white)),
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
                decoration: new InputDecoration(hintText: 'Sisi'),
                keyboardType: TextInputType.number,
                controller: sisi,
              ),
            ),

            new RaisedButton(
              onPressed: (){
                _hitungLuas(sisi);
              },
              child: new Text("Hitung Luas Persegi"),
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