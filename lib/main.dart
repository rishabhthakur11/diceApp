import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftdicepressed =1;
  int rightdicepressed=1;
  void buttonface(){
    setState(() {
      rightdicepressed=Random().nextInt(6)+1;
      leftdicepressed= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(


      child: Row(
        children: <Widget>[

          Expanded(
            child:FlatButton(
              onPressed: (){
                buttonface();
              },
              child: Image.asset('images/dice$leftdicepressed.png'),
            ),
          ),

          Expanded(
            child:FlatButton(
              onPressed: (){
                buttonface();

              },
              child: Image.asset('images/dice$rightdicepressed.png'),
            ),
          ),
        ],
      ),
    );

  }
}




