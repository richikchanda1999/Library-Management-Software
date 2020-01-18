import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/BLoC/PaymentBLoC.dart';
import 'package:library_management/support.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentGateway extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

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
                height: 470,
                child: ClipPath(
                  clipper: MyPath1(),
                  child: Container(
                    color: Color(0xffC1BDFC),
                  ),
                ),
              ),
              MyStackWidget(
                start: 30.54,
                top: 256,
                end: 30.54,
                //bottom: 382,
                height: 203.3,
                child: SvgPicture.asset(
                  "assets/undraw_wallet_aym5.svg",
                  semanticsLabel: "Payment",
                ),
              ),
              MyStackWidget(
                top: 384,
                //bottom: 10,
                start: 75,
                height: 33,
                width: 72,
                child: Text(
                  '₹ 130',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "Ubuntu", fontSize: sp(30),color: Colors.white),
                ),
              ),
              MyStackWidget(
                top: 572,
                //bottom: 10,
                start: 120,
                height: 32,
                end:120,
                child: RaisedButton(
                  child: Text(
                    'Pay Fine',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Ubuntu Light",
                        fontSize: sp(18)),
                  ),
                  color: Color(0xff645BEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    //side: BorderSide(color: Colors.red)
                  ),
                  // color: Colors.deepPurpleAccent,
                  onPressed: () {
                    pay("130");
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
}

class MyPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var p = Path();
    p.lineTo(0, size.height * 0.8);
    p.quadraticBezierTo(
        size.width * 0.5, size.height, size.width, size.height * 0.8);
    p.lineTo(size.width, 0);
    p.lineTo(0, 0);
    return p;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}