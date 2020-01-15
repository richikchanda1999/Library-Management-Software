import 'package:flutter/material.dart';
import 'package:library_management/UI/TeacherBookIssue.dart';
import 'UI/sohan.dart' as sohan;
import 'UI/TeacherBookIssue.dart';
import 'UI/StudentBookIssue.dart';

import 'UI/Manul.dart' as manul;

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

void main() => runApp(TeacherBookIssuePage());

