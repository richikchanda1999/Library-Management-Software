import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/UI/Payment_Gateway.dart';
import 'package:library_management/UI/SearchBooks.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class TeacherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TeacherHomePageScaffold(),
    );
  }
}

class TeacherHomePageScaffold extends StatelessWidget {
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
                  child: MyButton(
                    path: "assets/undraw_file_searching_duff"
                        ".svg",
                    label: "search",
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 800),
                              type: PageTransitionType.scale,
                              child: SearchBooks()));
                    },
                  )),
              MyStackWidget(
                top: 440,
                start: 80,
                height: 194,
                //bottom: 67,
                end: 80,
                child: MyButton(
                  path: "assets/undraw_wallet_aym5.svg",
                  label: "wallet",
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 800),
                            type: PageTransitionType.scale,
                            child: PaymentGateway()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  String path, label;
  Function onTap;
  MyButton({this.path, this.label, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              blurRadius: 0.5,
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
              child: SvgPicture.asset(
                path,
                semanticsLabel: label,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
