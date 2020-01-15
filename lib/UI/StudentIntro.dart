import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class StudentIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student',
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
//        appBar: AppBar(
//          title: Text('Professor'),
//        ),
      body: Stack(
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
        ],
      ),
    );
  }
}
