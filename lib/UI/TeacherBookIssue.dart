import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_management/support.dart';

class TeacherBookIssuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Teacher Book Issue",
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        MyStackWidget(
          top: 60,
          bottom: 629,
          start: 50,
          end: 50,
          child: SvgPicture.asset(
            "assets/undraw_Notebook_tlkl.svg",
            semanticsLabel: "Book",
          ),
        ),
        MyStackWidget(
          top: 211,
          start: 64,
          bottom: 567,
          end: 130,
          child: Text(
            "ISSUE BOOK",
            style: TextStyle(
                color: Color(0xff283350),
                fontSize: sp(28),
               // fontWeight: FontWeight.w400,
                fontFamily: "Raleway"),
          ),
        ),
        MyStackWidget(
          top: 272,
          start: 50,
          bottom: 329,
          end: 50,
          child: new Container(
            //  margin: EdgeInsets.only(left: 30, right: 30, top: 250, bottom: 335),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(sp(20.0))),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  blurRadius: 5,
                  offset: Offset(-1, 1),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Stack(
              children: <Widget>[
                MyStackWidget(
                  top: 19,
                  start: 32,
                  bottom: 176,
                  end: 159,
                  child: Text(
                    "Book Details",
                    style: TextStyle(
                        color: Color(0xff646464),
                        fontSize: sp(13),
                    //    fontWeight: FontWeight.w500,
                        fontFamily: "Ubuntu Medium"),
                  ),
                ),
                MyStackWidget(
                  top: 49,
                  start: 23,
                  bottom: 24,
                  end: 145,
                  child: new Container(
                    // margin: EdgeInsets.only(left: 23, right: 170, top: 49, bottom: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        MyStackWidget(
                          top: 52,
                          start: 29,
                          bottom: 52,
                          end: 29,
                          child: Text(
                            "Book Picture",
                            style: TextStyle(
                                color: Color(0xff646464),
                                fontSize: sp(13),
                            //    fontWeight: FontWeight.w500,
                                fontFamily: "Ubuntu Thin"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MyStackWidget(
                  top: 58,
                  start: 144,
                  bottom: 134,
                  end: 40,
                  child: Text(
                    "Book Name",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: sp(16),
                     //   fontWeight: FontWeight.w400,
                        fontFamily: "Ubuntu"),
                  ),
                ),
                MyStackWidget(
                  top: 82,
                  start: 144,
                  bottom: 110,
                  end: 74,
                  child: Text(
                    "Author",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: sp(16),
                        //fontWeight: FontWeight.w300,
                        fontFamily: "Ubuntu"),
                  ),
                ),
              ],
            ),
          ),
        ),
        MyStackWidget(
          top: 511,
          start: 50,
          bottom: 124,
          end: 50,
          child: new Container(
            //margin: EdgeInsets.only(left: 30, right: 30, top: 480, bottom: 124),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(sp(20.0))),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  blurRadius: 5,
                  offset: Offset(-1, 1),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Stack(
              children: <Widget>[
                MyStackWidget(
                  top: 16,
                  start: 29,
                  bottom: 145,
                  end: 145,
                  child: Text(
                    "Teacher Details",
                    style: TextStyle(
                        color: Color(0xff646464),
                        fontSize: sp(13),
                       // fontWeight: FontWeight.w500,
                        fontFamily: "Ubuntu Medium"),
                  ),
                ),
                MyStackWidget(
                  top: 46,
                  start: 26,
                  bottom: 25,
                  end: 154,
                  child: new Container(
                    //margin:
                    //EdgeInsets.only(left: 23, right: 190, top: 49, bottom: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        MyStackWidget(
                          top: 36,
                          start: 21,
                          bottom: 36,
                          end: 21,
                          child: Text(
                            "Teacher Picture",
                            style: TextStyle(
                                color: Color(0xff646464),
                                fontSize: sp(13),
                               // fontWeight: FontWeight.w500,
                                fontFamily: "Ubuntu Thin"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MyStackWidget(
                  top: 53,
                  start: 134,
                  bottom: 105,
                  end: 91,
                  child: Text(
                    "Name",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: sp(16),
                        fontFamily: "Ubuntu"),
                  ),
                ),
                MyStackWidget(
                  top: 77,
                  start: 134,
                  bottom: 81,
                  end: 118,
                  child: Text(
                    "ID",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: sp(16),
                        fontFamily: "Ubuntu"),
                  ),
                ),
              ],
            ),
          ),
        ),
        MyStackWidget(
          top: 710,
          start: 54,
          bottom: 58,
          end: 197,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color(0xffbaf8bc),
            ),
            child: Center(
                child: Text(
              "Issue",
              style: TextStyle(fontFamily: "Ubuntu Light", fontSize: 16),
            )),
          ),
        ),
        MyStackWidget(
          top: 710,
          start: 197,
          bottom: 58,
          end: 54,
          child: new Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color(0xfff8baba),
            ),
            child: Center(
                child: Text(
              "Cancel",
              style: TextStyle(
                fontFamily: "Ubuntu Light",
                fontSize: 16,
              ),
            )),
          ),
        ),
      ]),
    );
  }
}
