import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade200,
        appBar: AppBar(
          title: Center(child: Text('Dicey', style: TextStyle(color: Colors.white),),),
          backgroundColor: Colors.red.shade300,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    left = Random().nextInt(6)+1;
                  });
                },
                  child: Image.asset('images/dice$left.png'),
              ),
          ),
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    right = Random().nextInt(6)+1;
                  });
                },
                  child: Image.asset('images/dice$right.png'),
              ),
          ),
        ],
      ),
    );
  }
}



