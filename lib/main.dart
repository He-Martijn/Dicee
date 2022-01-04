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
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: double.infinity,
          ),
          //SizedBox(
          //  width: double.infinity,
          //),
          Expanded(
            flex: 1, // flex is division ratio 1:1 is default. Just here for reference.
            child: Image(image: AssetImage('images/dice1.png'),),),
          Expanded(
            flex: 1,
            child: Image(image: AssetImage('images/dice2.png'),),),

        ],
        ),
      );
  }
}
