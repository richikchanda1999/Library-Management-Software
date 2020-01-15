import 'package:flutter/material.dart';
import 'UI/sohan.dart' as sohan;
import 'UI/mansi.dart' as mansi;

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

void main() => runApp(mansi.MyApp());

