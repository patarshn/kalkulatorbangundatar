import 'package:flutter/material.dart';

class PersegiPanjang extends StatefulWidget{
  @override
  _PersegiPanjangState createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang>{
  double _luas = 0;
  final panjang = TextEditingController();
  final lebar = TextEditingController();

  void _hitungLuas(panjang,lebar){
    
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _luas = double.parse(panjang.text)*double.parse(lebar.text);
    });
  }

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Luas PersegiPanjang", style: new TextStyle(color: Colors.white)),
      ),
      body:new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Kalkulator Luas Persegi Panjang", style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),

            new SizedBox(
              width: double.infinity,
              child: new TextFormField(
                decoration: new InputDecoration(hintText: 'Panjang'),
                keyboardType: TextInputType.number,
                controller: panjang,
              ),
            ),

            new SizedBox(
              width: double.infinity,
              child: new TextFormField(
                decoration: new InputDecoration(hintText: 'Lebar'),
                keyboardType: TextInputType.number,
                controller: lebar,
              ),
            ),

            new RaisedButton(
              onPressed: (){
                _hitungLuas(panjang,lebar);
              },
              child: new Text("Hitung Luas PersegiPanjang"),
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