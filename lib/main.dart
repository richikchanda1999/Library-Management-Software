import 'package:flutter/material.dart';

import 'UI/Manul.dart';
import 'UI/ManulVerifyTeacher.dart';

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

void main() => runApp(TeacherVerify());