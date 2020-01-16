import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResult extends StatelessWidget {
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
    Orientation o = MediaQuery.of(context).orientation;
    ScreenUtil.init(context,
        width: (o == Orientation.portrait) ? 375 : 812,
        height: (o == Orientation.portrait) ? 812 : 375,
        allowFontScaling: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: (o == Orientation.portrait) ? w(375) : w(812),
          height: (o == Orientation.portrait) ? h(812) : w(812),
          child: Stack(
            children: <Widget>[
              MyStackWidget(
                start: 0,
                end: 0,
                top: 0,
                height: 277,
                child: ClipPath(
                  clipper: MyPath(),
                  child: Container(
                    color: Color(0xffC1BDFC),
                  ),
                ),
              ),
              MyStackWidget(
                start: 31,
                end: 31,
                top: 215,
                bottom: 37,
                child: ListView.separated(
                    padding: EdgeInsets.only(left: w(8), right: w(8)),
                    itemBuilder: (_, __) {
                      return SizedBox(
                        height: h(160),
                        child: MyCard()
                      );
                    },
                    separatorBuilder: (_, __) {
                      return Padding(
                          padding: EdgeInsets.only(top: h(20)));
                    },
                    itemCount: 10),

              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  String path;
  MyCard({this.path});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(sp(20.0))
      ),
      elevation: 5.0,
      margin: EdgeInsets.all(0),
      child: Stack(
        children: <Widget>[
          MyStackWidget(
            top: 15,
            bottom: 16,
            start:15,
            end: 235,

            child: SvgPicture.asset(
              "assets/Book front.svg",
              semanticsLabel: "Book",
            ),

          ),
          MyStackWidget(
            top: 30,
            start: 90,
            bottom: 60,
            end: 13,
            child: Text(
              "The Sun The Moon The Stars",
              style: TextStyle(
                  color: Color(0xff283350),
                  fontSize: sp(17),
                  // fontWeight: FontWeight.w400,
                  fontFamily: "Raleway Medium"),
            ),
          ),
          MyStackWidget(
            top: 95,
            start: 90,
            bottom: 50,
            end: 130,
            child: Text(
              "Junot Diaz",
              style: TextStyle(
                  color: Color(0xff283350),
                  fontSize: sp(13),
                  // fontWeight: FontWeight.w400,
                  fontFamily: "Raleway Light"),
            ),
          ),
          MyStackWidget(
            top: 115,
            start: 90,
            bottom: 15,
            end: 130,
            child: Text(
              "BOOK ID: xyz",
              style: TextStyle(
                  color: Color(0xff283350),
                  fontSize: sp(13),
                  // fontWeight: FontWeight.w400,
                  fontFamily: "Raleway Light"),
            ),
          ),
        ],
      ),
    );
  }
}

