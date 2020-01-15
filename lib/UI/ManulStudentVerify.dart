import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class StudentVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudentVerify',
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
            top: 520,
            start: 56,
            height: 125,
            end: 221,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: h(20), bottom: h(11), left:w(44), right: w(40)),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0)
                    ),
                  ),
                  color: Colors.white),
            ),
          ),
          MyStackWidget(
            top: 520,
            start: 179,
            height: 44,
            end: 56,
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: h(13), bottom: h(11), left:w(44), right: w(40)),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.0)
                      ),
                    ),
                    color: Color(0xffbaf8bc)),
                child: Text("Accept", textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff3d5a3e),
                        fontSize: sp(15), fontFamily: "Raleway Light"))
            ),
          ),
          MyStackWidget(
            top: 587,
            start: 179,
            height: 44,
            end: 56,
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: h(13), bottom: h(11), left:w(44), right: w(40)),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.0)
                      ),
                    ),
                    color: Color(0xfff8baba)),
                child: Text("Reject", textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff543a3a),
                        fontSize: sp(15), fontFamily: "Raleway Light"))
            ),
          ),
          MyStackWidget(
            start: 55,
            width: 272.79,
            top: 167,
            height: 211.9,
            child: SvgPicture.asset('assets/undraw_two_factor_authentication_namy.svg',
                semanticsLabel: 'Authentication',
                height: h(211.9),
                width: w(272.79)),
          ),
          MyStackWidget(
              start: 15,
              top: 426,
              child: Text("Verify Student", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: sp(30), fontFamily: "Raleway"))
          ),
          MyStackWidget(
              start: 57,
              end: 220,
              top: 660,
              height: 20,
              child: Text("Sam Smith", textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: sp(15), fontFamily: "Raleway"))
          )
        ],
      ),
    );
  }
}