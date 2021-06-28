import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: MyText(),),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
// \            },
//           ),
          body: Level1(),
        ),
      ),
    );
  }
}


class Level1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Level2();
  }
}

class Level2 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MyText();
  }
}

class MyText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}

class MyTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newVal) {
        Provider.of<Data>(context, listen: false).changeString(newVal);

      },
    );
  }
}

class Data extends ChangeNotifier {
  String data = 'From inside Data class';

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}