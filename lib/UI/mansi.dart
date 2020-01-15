import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class MyApp extends StatelessWidget {
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
          Positioned(
              top: h(179),
              left: w(58),
              height: h(212),
              width: w(259.51),
              child: SvgPicture.asset('assets/undraw_exams_g4ow.svg',
                height: h(212),
                width: w(259.51),)
          ),
          Positioned(
              top:h(430),
              left:w(137),
              height: h(33),
              right: w(137),
              child: Text("Student", textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff283350),
                      fontStyle: FontStyle.normal,
                      fontSize: 30)
              )
          ),
          Positioned(
              top:h(474),
              left:w(44),
              height: h(38),
              right: w(44),
              child: Text("to be decided", textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff283350),
                      fontStyle: FontStyle.normal,
                      fontSize: 16
                   )
              )
          ),
          Positioned(
            top:h(587),
            left:w(130),
            height:h(44),
            right:w(130),
            child: Container(
              child: Text('Continue', textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,
                  fontSize: 12)
            ),
            decoration: BoxDecoration(color: Color(0xff645BEB),
            borderRadius: new BorderRadius.only(
                topLeft:  const  Radius.circular(30.0),
                topRight: const  Radius.circular(30.0),
                bottomLeft: const Radius.circular(30.0),
                bottomRight: const Radius.circular(30.0))
            ),
          )),
        ],
      ),
    );
  }
}
