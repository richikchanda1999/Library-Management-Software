import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Function(num) get w => ScreenUtil().setWidth;
Function(num) get h => ScreenUtil().setHeight;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
//        appBar: AppBar(
//          title: Text('Professor'),
//        ),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: h(167),
              left: w(59.21),
              height: h(211.9),
              width: w(272.79),
              child: SvgPicture.asset('assets/undraw_professor_8lrt.svg',
                semanticsLabel: 'Professor Logo',
                height: h(211.9),
                width: w(272.79),)
          ),
          Positioned(
              bottom: 80,
              child: Text("Professor",
                  style: TextStyle(color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 30)
              )
          ),
          Positioned(
              bottom: 40,
              child: Text("Input any text here",
                  style: TextStyle(color: Colors.black,
                      fontSize: 15)
              )
          )
        ],
      ),
    );
  }
}

class HWLR extends StatelessWidget {
  double height, width, left, right;
  @override
  Widget build(BuildContext context) {
    return ;
  }
}
