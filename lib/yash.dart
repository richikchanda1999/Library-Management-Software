import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 100,
                //bottom: 10,
                right: 70,
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  'assets/undraw_Login_v483.svg',
                  semanticsLabel: "login",
                  height: 200,
                  width: 200,
                ),
              ),
              Positioned
                (
                  top: 400,
                  //bottom: 10,
                  left:5 ,
                  height: 200,
                  width: 200,
                child:Text('LOGIN',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              Positioned(
                bottom: 225,
                //bottom: 10,
                right: 50,
                height: 45,
                width: 260,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Username',
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
              Positioned(
                bottom: 170,
                //bottom: 10,
                right: 50,
                height: 45,
                width: 260,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                      hintText: 'Password',

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
              Positioned(
                bottom: 87,
                //bottom: 10,
                right: 50,
                height: 100,
                width: 200,
               child: ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('CONTINUE'),
                      color: Color(0xff645BEB),

                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
