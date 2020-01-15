import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_management/support.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Librarian",
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
     body:
     Stack(
         children: <Widget>[
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
             start: 132,
             width: 113,
             bottom: 348,
             child: Text("Librarian", style: TextStyle(color: Color(0xff283350), fontSize: sp(28),fontWeight: FontWeight.w400),),
           ),
           MyStackWidget(
             top: 474,
             start: 24,
             width: 329,
             bottom: 300,
             child: Text("Librarian is the backbone of the library. Without him/her library cannot function.",style: TextStyle(color: Color(0xff283350),fontSize: sp(16),fontWeight: FontWeight.w400),),
           )
         ]
     ),
    );
  }
}

