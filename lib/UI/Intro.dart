import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_management/UI/SearchBooks.dart';
import 'package:library_management/UI/Teacher_Home_Page.dart';
import 'package:page_transition/page_transition.dart';

import '../support.dart';
import 'Login.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<FirebaseUser>(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (context, snapshot) {
            return (!snapshot.hasData || snapshot.data == null)
                ? IntroScaffold()
                : TeacherHomePageScaffold();
          }),
    );
  }
}

class IntroScaffold extends StatefulWidget {
  @override
  _IntroScaffoldState createState() => _IntroScaffoldState();
}

class _IntroScaffoldState extends State<IntroScaffold> {
  int index = 0;
  PageController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      body: PageView(
        controller: controller,
        children: <Widget>[LibrarianIntro(), StudentIntro(), TeacherIntro()],
      ),
    );
  }
}

class StudentIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MyStackWidget(
            top: 179,
            start: 58,
            height: 212,
            width: 259.51,
            child: SvgPicture.asset(
              'assets/undraw_exams_g4ow.svg',
              //height: h(212),
              //width: w(259.51),
            )),
        MyStackWidget(
            top: 430,
            start: 130,
            height: 33,
            end: 130,
            child: Text("Student",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff283350),
                    fontFamily: "Raleway",
                    fontSize: sp(30)))),
        MyStackWidget(
            top: 474,
            start: 44,
            height: 38,
            end: 44,
            child: Text("to be decided",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff283350),
                    fontFamily: "Raleway",
                    fontSize: sp(15)))),
        MyStackWidget(
          top: 587,
          start: 130,
          height: 32,
          end: 130,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: Duration(milliseconds: 800),
                      type: PageTransitionType.fade,
                      child: LoginPage()));
            },
            child: Container(
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    color: Color(0xff645beb)),
                child: Text("Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: sp(16),
                        fontFamily: "Raleway Light"))),
          ),
        ),
      ],
    );
  }
}

class TeacherIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MyStackWidget(
          top: 600,
          start: 130,
          height: 32,
          end: 130,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: Duration(milliseconds: 800),
                      type: PageTransitionType.fade,
                      child: LoginPage()));
            },
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                    top: h(8), bottom: h(10), left: w(10), right: w(10)),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    color: Color(0xff645beb)),
                child: Text("Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: sp(15),
                        fontFamily: "Raleway Light"))),
          ),
        ),
        MyStackWidget(
          start: 55,
          width: 272.79,
          top: 167,
          height: 211.9,
          child: SvgPicture.asset('assets/undraw_professor_8lrt.svg',
              semanticsLabel: 'Professor Logo',
              height: h(211.9),
              width: w(272.79)),
        ),
        MyStackWidget(
            start: 125,
            top: 426,
            end: 125,
            child: Text("Teacher",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: sp(30),
                    fontFamily: "Raleway"))),
        MyStackWidget(
            start: 41,
            end: 41,
            top: 480,
            height: 25,
            child: Text("I need to think of something to put here",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: sp(15),
                    fontFamily: "Raleway")))
      ],
    );
  }
}

class LibrarianIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      MyStackWidget(
        width: 338,
        height: 184,
        top: 199,
        start: 19,
        child: SvgPicture.asset(
          "assets/undraw_teacher_35j2.svg",
          semanticsLabel: "Librarian",
        ),
      ),
      MyStackWidget(
        top: 430,
        start: 120,
        end: 120,
        bottom: 348,
        child: Text(
          "Librarian",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff283350),
              fontSize: sp(28),
              fontWeight: FontWeight.w400,
              fontFamily: "Raleway"),
        ),
      ),
      MyStackWidget(
        top: 474,
        start: 24,
        end: 24,
        bottom: 300,
        child: Text(
          "Librarian is the backbone of the library. Without him/her library cannot function.",
          style: TextStyle(
              color: Color(0xff283350),
              fontSize: sp(16),
              fontWeight: FontWeight.w400,
              fontFamily: "Raleway Light"),
          textAlign: TextAlign.center,
        ),
      ),
      MyStackWidget(
        top: 600,
        start: 130,
        height: 32,
        end: 130,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 800),
                    type: PageTransitionType.fade,
                    child: LoginPage()));
          },
          child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 8, bottom: 10, left: 10, right: 10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  color: Color(0xff645beb)),
              child: Text("Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: sp(15),
                      fontFamily: "Raleway Light"))),
        ),
      ),
    ]);
  }
}
