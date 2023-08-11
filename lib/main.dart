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
        backgroundColor: Color.fromARGB(255, 216, 27, 21),
        appBar: AppBar(
          title: Center(child: Text('DICE APP', style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold),)),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
   var leftDiceNumnber=1;
  var RightDiceNumnber=1;
  @override
  Widget build(BuildContext context) {
    return  Center(
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
                   RightDiceNumnber=Random().nextInt(6)+1;
                  setState(() {
                    
                  });
                  
            
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
                  
                  leftDiceNumnber=Random().nextInt(6)+1;
                  setState(() {
                    
                  });
                  
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

// class DicePage extends StatelessWidget {

//   var leftDiceNumnber=1;
//   var RightDiceNumnber=1;

//   void changeDice()
//   {

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           // Expanded(
//           //   flex: 1,
//           //   child: Image(image: AssetImage('images/dice1.png'),)
//           //   ),
//           //    Expanded(
//           //     flex: 2,
//           //   child: Image(image: AssetImage('images/dice2.png'),)
//           //   ),
    
//             Expanded(
//             // flex: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                 onPressed: (){
            
//                    print('right button got clicked');
//                 },
//                 child: Image.asset('images/dice$RightDiceNumnber.png')),
//             )
//             ),
//              Expanded(
//               // flex: 2,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                 onPressed: (){
                  
//                   RightDiceNumnber=Random().nextInt(6)+1;
                  
//                   print('left button got clicked');
//                 },
//                 child: Image.asset('images/dice$leftDiceNumnber.png')),
//             )
//             )
//         ],
//       ),
//     );
//   }
// }