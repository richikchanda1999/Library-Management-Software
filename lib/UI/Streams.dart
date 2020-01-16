import 'dart:async';

import 'package:flutter/material.dart';

var controller = StreamController<int>();
int val = 0;

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder<int>(
            stream: controller.stream,
            builder: (context, snapshot) {
              return Center(
                  child:
                      Text("Value : ${snapshot.hasData ? snapshot.data : 0}"));
            }),
        appBar: AppBar(
          leading: GestureDetector(
              onLongPress: () {
                controller.sink.add(++val);
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
