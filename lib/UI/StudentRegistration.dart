import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class StuReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration',
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 375,height: 812,allowFontScaling: true);
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      width: w(375),
      height: h(812),
      child: Stack(children: <Widget>[
        MyStackWidget(
          top: 62,
          end: 58,
          start: 58,
          child: SvgPicture.asset(
            'assets/undraw_exams_g4ow.svg',
            height: 212,
            width: 259.51,
          ),
        ),
        MyStackWidget(
          top: 332,
          end: 56,
          start: 56,
          child: Text(
            'Student Registration',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Raleway',
              fontSize: sp(27),
            ),
          ),
        ),
        MyStackWidget(
          top: 376,
          end: 64,
          start: 75,
          child: Text(
            'You are not registered with us.Please register to continue.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: sp(16.1),
            ),
          ),
        ),
        MyStackWidget(
          top: 443,
          end: 58,
          start: 58,
          child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Color(0xff645BEB),
                  ),
                  contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                  fillColor: Color(0xffDDDBFE),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    )
                  )
            ),
          ),
        ),
        MyStackWidget(
          top: 507,
          end: 123,
          start: 123,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7.0),
                topRight: Radius.circular(7.0),
                bottomLeft: Radius.circular(7.0),
                bottomRight: Radius.circular(7.0),
              )
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(27, 42, 27, 42),
              child: Text(
                "Ubuntu Font"
              ),
            ),
          ),
        ),
        MyStackWidget(
          top: 635,
          end: 129,
          start: 129,
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              'Upload',
              style: TextStyle(
                fontFamily: "Raleway Light",
                fontSize: sp(15),
                color: Colors.white,
              ),
            ),
            color: Color(0xff645BEB),
            padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 26.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0)
            ),
          ),
        ),
        MyStackWidget(
          top: 707,
          end: 52,
          start: 52,
          child: RaisedButton(
            child: Text(
              'Request ID and Password',
              style: TextStyle(
                fontFamily: "Raleway Regular",
                fontSize: sp(15),
                color: Colors.white,
              ),
            ),
            onPressed: () {},
            color: Color(0xff645BEB),
            padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 26.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
          ),
        ),
      ]),
    )));
  }
}
