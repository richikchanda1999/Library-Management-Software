import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                height: 450,
                child: ClipPath(
                  clipper: MyPath1(),
                  child: Container(
                    color: Color(0xffC1BDFC),
                    child: Stack(
                      children: <Widget>[
                        MyStackWidget(
                          top: 278,
                          start: 152,
                          bottom: 74,
                          end: 28,
                          child: Text(
                            "The Sun, The Moon, The Stars",
                            style: TextStyle(
                                color: Color(0xff283350),
                                fontSize: sp(21),
                                // fontWeight: FontWeight.w400,
                                fontFamily: "Raleway Medium"),
                          ),
                        ),
                        MyStackWidget(
                          top: 338,
                          start: 153,
                          bottom: 51,
                          end: 28,
                          child: Text(
                            "Junot Diaz",
                            style: TextStyle(
                                color: Color(0xff2f3c7e),
                                fontSize: sp(15),
                                // fontWeight: FontWeight.w400,
                                fontFamily: "Ubuntu Light"),
                          ),
                        ),
                        MyStackWidget(
                          top: 363,
                          start: 152,
                          bottom: 26,
                          end: 60,
                          child: Text(
                            "BOOK ID: xyz",
                            style: TextStyle(
                                color: Color(0xff2f3c7e),
                                fontSize: sp(14),
                                // fontWeight: FontWeight.w400,
                                fontFamily: "Ubuntu Light"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              MyStackWidget(
                start: 30,
                top: 270,
                end: 239,
                bottom: 382,
                child: SvgPicture.asset(
                  "assets/Book front.svg",
                  semanticsLabel: "Book",
                ),
              ),
              MyStackWidget(
                top: 451,
                start: 30,
                bottom: 340,
                end: 258,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xffccdaf9),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: Offset(0, 1.5)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, -1.5)),
                      ]),


                  child: Center(
                      child: Text(
                        "Short Story",
                        style: TextStyle(fontFamily: "Ubuntu Light", fontSize: 11, color: Color(0xff283350)),
                      )),
                ),
              ),
              MyStackWidget(
                top: 451,
                start: 128,
                bottom: 340,
                end: 160,
                child: new Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xffccdaf9),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: Offset(0, 1.5)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, -1.5)),
                      ],
                  ),
                  child: Center(
                      child: Text(
                        "Relationships",
                        style: TextStyle(
                          fontFamily: "Ubuntu Light",
                          fontSize: 11,
                          color: Color(0xff283350)
                        ),
                      )),
                ),
              ),
              MyStackWidget(
                top: 522,
                start: 28,
                bottom: 177,
                end: 28,
                child: new Container(
                  child: Center(
                      child: Text(
                        "The Sun, the Moon, the Stars recounts the ways which Yunior, a proud Dominican male, manages to sabotage his relationship with Magdalena, a woman who seems very much like every man's deal. The story progresses from one miscue to another as Yunior attempts to remedy.",
                        style: TextStyle(
                          fontFamily: "Ubuntu Light",
                          fontSize: 14,
                          color: Color(0xff283350),
                        ),
                      )),
                ),
              ),
              MyStackWidget(
                top: 696,
                start: 40,
                bottom: 83,
                end: 205,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xff645beb),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 4,
                            offset: Offset(0, 1.5)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, -1.5)),
                      ]),
                  child: Center(
                      child: Text(
                        "View Issue Details",
                        style: TextStyle(fontFamily: "Ubuntu Light", fontSize: 13,color: Color(0xffffffff),),
                      )),
                ),
              ),
              MyStackWidget(
                top: 696,
                start: 205,
                bottom: 83,
                end: 40,
                child: new Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xff645beb),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 4,
                            offset: Offset(0, 1.5)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, -1.5)),
                      ]),

                  child: Center(
                      child: Text("Search on internet",
                        style: TextStyle(
                          fontFamily: "Ubuntu Light",
                          fontSize: 13,
                          color: Color(0xffffffff),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var p = Path();
    p.lineTo(0, size.height * 0.75);
    p.quadraticBezierTo(
        size.width * 0.5, size.height, size.width, size.height * 0.75);
    p.lineTo(size.width, 0);
    p.lineTo(0, 0);
    return p;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}