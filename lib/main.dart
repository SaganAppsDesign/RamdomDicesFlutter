import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.green,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int rightDice = 2;
  int leftDice = 4;

  randomNumber() {
    var rng = Random();
    setState(() {
      leftDice = rng.nextInt(5) + 1;
      ;
      rightDice = rng.nextInt(5) + 1;
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset("images/dice$leftDice.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset("images/dice$rightDice.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
