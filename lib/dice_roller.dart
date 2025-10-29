import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  final randomizer=Random();
  var currentDiceRoll1=1;
  var currentDiceRoll2=2;
  
  void rollDice(){
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment(-0.35,0),
          child: Image.asset(
            "assets/dice-$currentDiceRoll1.png",
            width: 85
            ),),
            Align(
              alignment: Alignment(0.35,0),
              child:
            Image.asset("assets/dice-$currentDiceRoll2.png",
            width: 85,)
          
      ),
    
            // SizedBox(height: 20,),
            // TextButton
            Align(
              alignment: Alignment(0,0.6),
              child:ElevatedButton(onPressed: rollDice, 
              style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 100, 25, 25),
              backgroundColor: const Color.fromARGB(255, 178, 42, 32), 
              textStyle: const TextStyle(
                fontSize: 23)),
            child: const Text("Roll Dice!"),
            ),
            ),
          
    ],
    );
  }
}