import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/support.dart';

class Main extends StatelessWidget {
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
                start: 32,
                end: 32,
                top: 215,
                bottom: 37,
                child: ListView.separated(
                    padding: EdgeInsets.all(0),
                    itemBuilder: (_, __) {
                      return SizedBox(
                        height: h(160),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(sp(20.0))
                          ),
                          elevation: 5.0,
                        ),
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
