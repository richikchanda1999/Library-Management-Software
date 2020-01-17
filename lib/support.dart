import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Function(num) get w => ScreenUtil().setWidth;
Function(num) get h => ScreenUtil().setHeight;
Function(num) get sp => ScreenUtil().setSp;

double leftOffset = 0.0, topOffset = 0.0, rightOffset = 0.0, bottomOffset = 0.0;

class MyStackWidget extends StatelessWidget {
  double start, width, top, height, end, bottom;
  Widget child;
  MyStackWidget(
      {this.start,
      this.width,
      this.top,
      this.height,
      this.end,
      this.bottom,
      this.child});
  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
        textDirection: TextDirection.ltr,
        start:
            (start != null) ? ScreenUtil().setWidth(start - leftOffset) : null,
        width: (width != null) ? ScreenUtil().setWidth(width + 5) : null,
        top: (top != null) ? ScreenUtil().setHeight(top - topOffset) : null,
        height: (height != null) ? ScreenUtil().setHeight(height + 10) : null,
        end: (end != null) ? ScreenUtil().setWidth(end - rightOffset) : null,
        bottom: (bottom != null)
            ? ScreenUtil().setHeight(bottom - bottomOffset)
            : null,
        child: child);
  }
}

class MyPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var p = Path();
    p.lineTo(0, size.height * 0.65);
    p.quadraticBezierTo(
        size.width * 0.5, size.height, size.width, size.height * 0.65);
    p.lineTo(size.width, 0);
    p.lineTo(0, 0);
    return p;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
