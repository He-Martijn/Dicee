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

int dicePicker(){
  print('dicePicker is called');
  int number = 0;
  number = Random().nextInt(6)+1;
  print('number = $number');
  return number;

  /*rightDiceNumber = (Random().nextInt(6))+1;
  print('rightDiceNumber = $rightDiceNumber');
  leftDiceNumber = Random().nextInt(6)+1;
  print('leftDiceNumber = $leftDiceNumber');*/
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  // This function added for the challenge to put everything in a function:
  void changeDiceFace(){
    print('changeDiceFace is called');
    setState(() {
      leftDiceNumber=dicePicker();
      rightDiceNumber=dicePicker();
    });
  }

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
                  print('left button is pressed');
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            //Image(image: AssetImage('images/dice1.png'),),),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: (){
                    print('right button is pressed');
                    //dicePicker();
                    changeDiceFace();
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