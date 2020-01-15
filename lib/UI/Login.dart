import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class LoginPage extends StatelessWidget {
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
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: w(375),
          height: h(812),
          child: Stack(
            children: <Widget>[
              MyStackWidget(
                top: 100,
                //bottom: 10,
                end: 70,
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  'assets/undraw_Login_v483.svg',
                  semanticsLabel: "login",
                  height: 200,
                  width: 200,
                ),
              ),
              MyStackWidget(
                top: 406,
                //bottom: 10,
                start: 65,
                height: 33,
                width: 72,
                child: Text(
                  'LOGIN',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "Raleway", fontSize: sp(20)),
                ),
              ),
              MyStackWidget(
                top: 472,
                //bottom: 10,
                start: 59,
                end: 59,
                height: 44,
                //width: 260,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Color(0xff645BEB)),
                    contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                    // fillColor: Colors.indigoAccent[50],
                    fillColor: Color(0xffDDDBFE).withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(120),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              MyStackWidget(
                top: 539,
                //bottom: 10,
                start: 59,
                end: 59,
                height: 44,
                //width: 260,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: w(20), top: h(5)),
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xff645BEB)),
                    fillColor: Color(0xffDDDBFE).withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(120),

                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              MyStackWidget(
                top: 606,
                //bottom: 10,
                start: 180,
                height: 50,
                end: 50,
                child: RaisedButton(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontFamily: "Raleway Light", fontSize: sp(16)),
                  ),
                  color: Color(0xff645BEB),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    //side: BorderSide(color: Colors.red)
                  ),
                  // color: Colors.deepPurpleAccent,
                  onPressed: () {
                    // TODO: Show the next page (101)
                  },

                  splashColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} //Scaffold
