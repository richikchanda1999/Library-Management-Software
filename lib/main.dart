import 'package:flutter/material.dart';
import 'package:library_management/UI/login.dart';
import 'UI/sohan.dart' as sohan;

import 'UI/Manul.dart' as manul;
import 'UI/Streams.dart' as streams;

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


void main() => runApp(streams.Main());


