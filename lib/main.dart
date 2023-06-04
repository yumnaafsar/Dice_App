import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {

  var leftDiceNumnber=1;
  var RightDiceNumnber=1;

  void changeDice()
  {

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // Expanded(
          //   flex: 1,
          //   child: Image(image: AssetImage('images/dice1.png'),)
          //   ),
          //    Expanded(
          //     flex: 2,
          //   child: Image(image: AssetImage('images/dice2.png'),)
          //   ),
    
            Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                   
                   print('right button got clicked');
                },
                child: Image.asset('images/dice$RightDiceNumnber.png')),
            )
            ),
             Expanded(
              // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                  
                  RightDiceNumnber=Random().nextInt(6)+1;
                  print('left button got clicked');
                },
                child: Image.asset('images/dice$leftDiceNumnber.png')),
            )
            )
        ],
      ),
    );
  }
}