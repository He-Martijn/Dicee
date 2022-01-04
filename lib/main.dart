import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice4.png'),
              ),
            ),
              //Image(image: AssetImage('images/dice1.png'),),),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice5.png'),
              ),
              //child: Image(image: AssetImage('images/dice2.png'),),),
            ),

          ],
          ),
        ),
      );
  }
}
