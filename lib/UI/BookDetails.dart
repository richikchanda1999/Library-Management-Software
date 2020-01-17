import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/Model/Book.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetail extends StatelessWidget {
  Book book;
  BookDetail({this.book});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffold(
        book: book,
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  Book book;
  MyScaffold({this.book});
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
                  ),
                ),
              ),
              MyStackWidget(
                top: 278,
                start: 152,
                bottom: 74,
                end: 28,
                child: Text(
                  book.title,
                  style: TextStyle(
                      color: Color(0xff283350),
                      fontSize: sp(18),
                      // fontWeight: FontWeight.w400,
                      fontFamily: "Raleway Medium"),
                ),
              ),
              MyStackWidget(
                top: 360,
                start: 153,
                bottom: 51,
                end: 28,
                child: Text(
                  book.author,
                  style: TextStyle(
                      color: Color(0xff2f3c7e),
                      fontSize: sp(15),
                      // fontWeight: FontWeight.w400,
                      fontFamily: "Ubuntu Light"),
                ),
              ),
              MyStackWidget(
                start: 30,
                top: 270,
                end: 239,
                bottom: 382,
                child: Hero(
                  tag: book,
                  child: Image.network(
                    book.thumbnailUrl,
                  ),
                ),
              ),
              MyStackWidget(
                top: 440,
                start: 30,
                end: 30,
                height: 25,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) {
                    return Padding(
                      padding: EdgeInsets.only(left: w(16)),
                    );
                  },
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: w(150),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
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
                          book.categories[index],
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: "Ubuntu Light",
                              fontSize: 11,
                              color: Color(0xff283350)),
                        )),
                      ),
                    );
                  },
                  itemCount: book.categories.length,
                ),
              ),
              MyStackWidget(
                top: 490,
                start: 28,
                bottom: 140,
                end: 28,
                child: new Container(
                  child: Center(
                      child: SingleChildScrollView(
                    child: SizedBox(
                      width: w(375-56),
                      height: h(812 - (480 + 150)),
                      child: Text(
                        book.description,
                        textAlign: TextAlign.justify,
                        maxLines: 10,
                        style: TextStyle(
                          fontFamily: "Ubuntu Light",
                          fontSize: 14,
                          color: Color(0xff283350),
                        ),
                      ),
                    ),
                  )),
                ),
              ),
              MyStackWidget(
                top: 696,
                start: 100,
                bottom: 83,
                end: 100,
                child: Center(
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
                      style: TextStyle(
                        fontFamily: "Ubuntu Light",
                        fontSize: 13,
                        color: Color(0xffffffff),
                      ),
                    )),
                  ),
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
