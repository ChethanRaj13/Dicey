import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp as Widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}