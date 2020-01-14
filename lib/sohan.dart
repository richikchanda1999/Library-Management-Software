import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Librarian",
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
     Stack(
         children: <Widget>[
           Positioned.fill(child: SvgPicture.asset(
             "assets/undraw_teacher_35j2.svg",
              semanticsLabel: "Librarian",
            ),
           ),

         ]
     )

//      Container(
//        child: Center(child: Text('test'),),
//        height: 190.0,
//        width: MediaQuery.of(context).size.width - 100.0,
//        decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(5),
//            color: Colors.blue,
//            image: DecorationImage(
//                image: new NetworkImage(
//                    "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/MDA2018_inline_03.jpg"
//                ),
//                fit: BoxFit.fill
//            )
//        ),
//      ),
    );
  }
}

