import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee',
          style: TextStyle(
              color: Colors.white
          ),),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(
            //  height: double.infinity,
            //),
            //SizedBox(
            //  width: double.infinity,
            //),
            // Sizedbox isn't necessary. Better use a centre widget.
            Expanded(
              flex: 1, // flex is division ratio 1:1 is default. Just here for reference.
              child: TextButton(
                onPressed: (){
                  setState(() {
                    int betweenInt = Random().nextInt(6);
                    print('In setState betweenInt = $betweenInt');
                    leftDiceNumber = betweenInt+1;
                    print('In setState leftDiceNumber = $leftDiceNumber');
                  });
                  print('left button pressed');
                  print('The value for leftDiceNumber = $leftDiceNumber');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            //Image(image: AssetImage('images/dice1.png'),),),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = (Random().nextInt(6))+1;
                      print('rightDiceNumber = $rightDiceNumber');
                    });
                    print('right button pressed');
                    print('The value for rightDiceNumber = $rightDiceNumber');
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
              //child: Image(image: AssetImage('images/dice2.png'),),),
            ),

          ],
        ),
      ),
    );
  }
}

/* This is from before the statefull widget :
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 5;
    int rightDiceNumber = 2;
    return
      SafeArea(
        child: Center(
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(
            //  height: double.infinity,
            //),
            //SizedBox(
            //  width: double.infinity,
            //),
            // Sizedbox isn't necessary. Better use a centre widget.
            Expanded(
              flex: 1, // flex is division ratio 1:1 is default. Just here for reference.
              child: TextButton(
                onPressed: (){
                  print('left button pressed');
                  print('The value for leftDiceNumber = $leftDiceNumber');
                },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
              //Image(image: AssetImage('images/dice1.png'),),),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  print('right button pressed');
                },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
              //child: Image(image: AssetImage('images/dice2.png'),),),
            ),

          ],
          ),
        ),
      );
  }
}
*/