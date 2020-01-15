import 'package:flutter/material.dart';
import 'package:library_management/UI/ManulStudentVerify.dart';

import 'UI/Manul.dart' as manul;
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

void main() => runApp(StudentVerify());