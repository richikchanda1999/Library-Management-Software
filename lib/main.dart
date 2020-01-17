import 'package:flutter/material.dart';

import 'package:library_management/UI/SearchBooks.dart';

import 'package:library_management/UI/Login.dart';
import 'UI/BarcodeScan.dart';
import 'UI/ViewSearchResult.dart' as search;
import 'UI/ViewSearchResult.dart';


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

void main() => runApp(SearchBooks());

