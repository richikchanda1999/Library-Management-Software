import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/BLoC/SearchBLoC.dart';
import 'package:library_management/Model/Book.dart';
import 'package:library_management/UI/BookDetails.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class SearchResult extends StatelessWidget {
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
                child: StreamBuilder<List<Book>>(
                    stream: bookStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Book> books = snapshot.data;
                        return books.length == 0
                            ? Center(
                                child: Text("No books to display!"),
                              )
                            : ListView.separated(
                                padding: EdgeInsets.only(
                                    left: w(8), right: w(8), bottom: h(16)),
                                itemBuilder: (_, __) {
                                  return SizedBox(
                                      height: h(160),
                                      child: MyCard(
                                        book: books[__],
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (____) => BookDetail(
                                                        book: books[__],
                                                      )));
                                        },
                                      ));
                                },
                                separatorBuilder: (_, __) {
                                  return Padding(
                                      padding: EdgeInsets.only(top: h(20)));
                                },
                                itemCount: books.length);
                      } else
                        return Center(child: CircularProgressIndicator());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  Book book;
  Function onTap;
  MyCard({this.book, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sp(20.0))),
        elevation: 5.0,
        margin: EdgeInsets.all(0),
        child: Stack(
          children: <Widget>[
            MyStackWidget(
              top: 15,
              bottom: 16,
              start: 15,
              end: 235,
              child: Hero(
                tag: book,
                child: book.thumbnailUrl != ""
                    ? Image.network(
                        book.thumbnailUrl,
                      )
                    : Center(
                        child: Text(
                          "No image",
                          textAlign: TextAlign.center,
                        ),
                      ),
              ),
            ),
            MyStackWidget(
              top: 30,
              start: 90,
              bottom: 60,
              end: 13,
              child: Text(
                book.title,
                maxLines: 3,
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
              end: 10,
              child: Text(
                book.author,
                textAlign: TextAlign.left,
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
              end: 10,
              child: Text(
                "Genre : ${book.categories.join(", ")}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xff283350),
                    fontSize: sp(13),
                    // fontWeight: FontWeight.w400,
                    fontFamily: "Raleway Light"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
