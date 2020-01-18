import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/BLoC/SearchBLoC.dart';
import 'package:library_management/Model/Book.dart';
import 'package:library_management/UI/BookDetails.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class TeacherHomePage extends StatelessWidget {
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
                top: 178,
                start: 80,
                height: 194,
                //bottom: 67,
                end: 80,
                child: new Container(
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
                        color: Color(0xffC1BDFC),
                        blurRadius: 5,
                        offset: Offset(0, -5),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                    MyStackWidget(
                    top: 25,
                    start: 20,
                    //height: 143,
                    bottom: 25,
                    end: 20,
                    child:SvgPicture.asset(
                      "assets/undraw_file_searching_duff.svg",
                      semanticsLabel: "Search",
                    ) ,
                  ),


                    ],
              ),
                  ),
    ),

              MyStackWidget(
                top: 440,
                start: 80,
                height: 194,
                //bottom: 67,
                end: 80,
                child: new Container(
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
                        top: 25,
                        start: 20,
                        //height: 143,
                        bottom: 25,
                        end: 20,
                        child:SvgPicture.asset(
                          "assets/undraw_wallet_aym5.svg",
                          semanticsLabel: "Search",
                        ) ,
                      ),


                    ],
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
