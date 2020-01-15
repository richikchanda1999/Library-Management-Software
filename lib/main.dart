import 'package:flutter/material.dart';
import 'UI/sohan.dart' as sohan;

import 'UI/Manul.dart' as manul;
import 'UI/StudentRegistration.dart' as soumyajit;
import 'UI/TecherRegistration.dart' as teach;

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

void main() => runApp(teach.TeachReg());
