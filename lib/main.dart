import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String passedData = 'My top secret data';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Level1(data: passedData),
    );
  }
}


class Level1 extends StatelessWidget {
  late String data;

  Level1({required this.data});

  @override
  Widget build(BuildContext context) {
    return Level2(data: this.data);
  }
}

class Level2 extends StatelessWidget {
  late String data = 'level2';

  Level2({required this.data});


  @override
  Widget build(BuildContext context) {
    return Level3(data: this.data);
  }
}

class Level3 extends StatelessWidget {
  late String data;

  Level3({required this.data});


  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}

