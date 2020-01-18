import 'package:flutter/material.dart';
import 'package:library_management/UI/Intro.dart';

import 'package:library_management/UI/SearchBooks.dart';

import 'package:library_management/UI/Login.dart';
import 'package:library_management/UI/Test.dart';
import 'UI/BarcodeScan.dart';
import 'UI/Payment_Gateway.dart';
import 'UI/Teacher_Home_Page.dart';
import 'UI/ViewSearchResult.dart' as search;
import 'UI/ViewSearchResult.dart';
import 'UI/BookDetails.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

void main() {
  runApp(IntroScreen());
}

void signIn({String user, String password}) {
  FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: user, password: password);
  FirebaseAuth.instance.signOut();
}