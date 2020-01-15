import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Professor',
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
        appBar: AppBar(
          title: Text('Professor'),
        ),
      body: Stack(
        children: <Widget>[
          MyStackWidget(
            top: 600,
            start: 130,
            height: 32,
            end: 130,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: h(8), bottom: h(10), left:w(10), right: w(10)),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0)
                  ),
                ),
                color: Color(0xff645beb)),
                child: Text("Continue", textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: sp(15), fontFamily: "Raleway Light"))
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
              child: Text("Teacher", textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: sp(30), fontFamily: "Raleway"))
          ),
          MyStackWidget(
              start: 41,
              end: 41,
              top: 480,
              height: 25,
              child: Text("I need to think of something to put here", textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: sp(15), fontFamily: "Raleway"))
          )
        ],
      ),
    );
  }
}