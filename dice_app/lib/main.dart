import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,

        ),
        body: DicePage(),
      )
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child:  Row(
        children: <Widget>[
          Expanded(


            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber=6;
                  print('diceNumber=$leftDiceNumber');
                });
              },
              child: Image.asset('images/dicee$leftDiceNumber.png'),
            ),
          ),

          Expanded(


            child: FlatButton(
              onPressed: (){
                print('Right Button got Pressed');
              },
              child: Image.asset('images/dicee.png'),
            ),
          ),


        ],
      ),
    );
  }
}






