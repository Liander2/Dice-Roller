import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class RandomNumberGenerator extends StatefulWidget {
  @override
  _RandomNumberGeneratorState createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  final Random _random =
      Random(); // Create a Random object for generating random numbers
  int _randomNumber = 0;

  // Method for generating a random number
  void generateRandomNumber() {
    setState(
      () {
        _randomNumber = 1 +
            _random.nextInt(20); // Generates a random 2 digit number up to 20
      },
    );
  }

  void generateRandomNumbertwo() {
    setState(
      () {
        _randomNumber = 1 +
            _random.nextInt(12); // Generates a random 2 digit number up to 12
      },
    );
  }

  void generateRandomNumbertree() {
    setState(
      () {
        _randomNumber = 1 +
            _random.nextInt(10); // Generates a random 2 digit number up to 10
      },
    );
  }

  void generateRandomNumberfour() {
    setState(
      () {
        _randomNumber =
            1 + _random.nextInt(8); // Generates a random 1 digit number up to 8
      },
    );
  }

  void generateRandomNumberfive() {
    setState(
      () {
        _randomNumber =
            1 + _random.nextInt(6); // Generates a random 1 digit number up to 6
      },
    );
  }

  void generateRandomNumbersix() {
    setState(
      () {
        _randomNumber =
            1 + _random.nextInt(4); // Generates a random 1 digit number up to 4
      },
    );
  }

  void generateRandomNumberseven() {
    setState(
      () {
        _randomNumber = 1 +
            _random.nextInt(100); // Generates a random 3 digit number up to 100
      },
    );
  }

  void generateRandomNumbereight() {
    setState(
      () {
        _randomNumber =
            1 + _random.nextInt(2); // Generates a random 1 digit number up to 2
      },
    );
  }

  int _counter = 0;
  void counterplus() {
    setState(() {
      _counter++;
    });
  }

  void counterminus() {
    setState(() {
      _counter--;
    });
  }

  int totalresult = 0;
  void totresult() {
    setState(() {});
    totalresult = _randomNumber + _counter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dice Roller'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 187, 128, 255),
        ),
        body: Container(
          child: Column(children: [
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    generateRandomNumber();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d20.png',
                    scale: 7,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateRandomNumbertwo();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d12.png',
                    scale: 7,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateRandomNumbertree();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d10.png',
                    scale: 7,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateRandomNumberfour();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d8.png',
                    scale: 7,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    generateRandomNumberfive();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d6.png',
                    scale: 7,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateRandomNumbersix();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d4.png',
                    scale: 7,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateRandomNumberseven();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/d100.png',
                    scale: 7,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    generateRandomNumbereight();
                    totresult();
                  },
                  child: Image.asset(
                    'assets/2.png',
                    scale: 7,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Dice Result:',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '$_randomNumber',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: counterminus,
                  child: Text('-'),
                ),
                Text(
                  '    $_counter    ',
                ),
                ElevatedButton(
                  onPressed: counterplus,
                  child: Text('+'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Total Result',
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  '$totalresult',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ]),
        ));
  }
}


// Align(
//               alignment: Alignment.bottomRight,
//               child: FloatingActionButton(
//                 onPressed: () => {SystemNavigator.pop()},
//                 child: const Icon(Icons.exit_to_app),
//               ),
//             ),