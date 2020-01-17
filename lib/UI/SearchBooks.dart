import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:library_management/BLoC/SearchBLoC.dart';
import 'package:library_management/UI/Intro.dart';
import 'package:library_management/UI/ViewSearchResult.dart';
import 'package:library_management/main.dart';
import 'package:library_management/support.dart';
import 'package:page_transition/page_transition.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_to_text.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';

class SearchBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchBookScaffold(),
    );
  }
}

TextEditingController controller = TextEditingController();

class SearchBookScaffold extends StatefulWidget {
  @override
  _SearchBookScaffoldState createState() => _SearchBookScaffoldState();
}

class _SearchBookScaffoldState extends State<SearchBookScaffold> {
  bool _hasSpeech = false;
  String lastWords = "";
  String lastError = "";
  String lastStatus = "";
  final SpeechToText speech = SpeechToText();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSpeechState();
  }

  Future<void> initSpeechState() async {
    bool hasSpeech = await speech.initialize(onError: (error) {
      setState(() {
        lastError = "${error.errorMsg} - ${error.permanent}";
      });
    }, onStatus: (status) {
      setState(() {
        lastStatus = "$status";
      });
    });

    if (!mounted) return;
    setState(() {
      _hasSpeech = hasSpeech;
    });
  }

  void search(String s) {
    s = s.replaceAll(" ", "+");
    String url = "https://www.googleapis.com/books/v1/volumes?q=" +
        s +
        "&orderBy=relevance";
    fetchBooks(url);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => SearchResult()));
  }

  void startListening() {
    lastWords = "";
    lastError = "";
    speech.listen(onResult: (result) {
      if (result.finalResult) {
        String recognised = result.recognizedWords;
        //print("Recognised : $recognised");
        search(recognised);
      }
    });
    setState(() {});
  }

  void stopListening() {
    speech.stop();
    setState(() {});
  }

  void cancelListening() {
    speech.cancel();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: w(375),
          height: h(812),
          child: Stack(
            children: <Widget>[
              MyStackWidget(
                top: 134.53,
                //bottom: 10,
                start: 75,
                end: 75,
                height: 198.47,
                //width: 200,
                child: SvgPicture.asset(
                  'assets/undraw_file_searching_duff.svg',
                  semanticsLabel: "file_searching",
                  height: 200,
                  width: 200,
                ),
              ),
              MyStackWidget(
                top: 406,
                //bottom: 10,
                start: 51,
                height: 33,
                //width: 200,
                child: Text(
                  'Search',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "Raleway", fontSize: sp(28)),
                ),
              ),
              MyStackWidget(
                top: 450,
                //bottom: 10,
                start: 118,
                height: 60,
                width: 60,
                child: CircularButton(
                  path: "assets/speaker.svg",
                  onTap: () {
                    startListening();
                    Fluttertoast.showToast(msg: "Listening... Try speaking");
                    Future.delayed(Duration(seconds: 5)).then((v) {
                      stopListening();
                      cancelListening();
                      Fluttertoast.showToast(msg: "Stopped listening...");
                    });
//                    showDialog(
//                        context: context,
//                        barrierDismissible: false,
//                        builder: (_) {
//                          return Dialog(
//                            child: Center(
//                              child: IconButton(
//                                icon: Icon(Icons.cancel),
//                                onPressed: () {
//                                  Navigator.of(context).pop(this);
//                                  stopListening();
//                                  cancelListening();
//                                },
//                              ),
//                            ),
//                          );
//                        });
                  },
                ),
              ),
              MyStackWidget(
                top: 450,
                //bottom: 10,
                start: 214,
                height: 60,
                width: 60,
                child: GestureDetector(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 800),
                            type: PageTransitionType.fade,
                            child: IntroScreen()));
                  },
                  child: CircularButton(
                    path: "assets/scan.svg",
                  ),
                ),
              ),
              MyStackWidget(
                top: 552,
                start: 52,
                height: 10,
                end: 52,
                child: Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Text("OR"),
                  Expanded(child: Divider()),
                ]),
              ),
              MyStackWidget(
                top: 581,
                //bottom: 10,
                start: 44,
                height: 42,
                end: 44,
                child: TextField(
                  controller: controller,
                  style: TextStyle(
                      color: Color(0xff645BEB), fontFamily: "Ubuntu Light"),
                  decoration: InputDecoration(
                    filled: true,
                    suffix: IconButton(
                        icon: Icon(Icons.search, size: h(18),),
                        onPressed: () {
                          search(controller.value.text);
                          controller.value = TextEditingValue(text: "");
                        }),
                    hintText: 'Type To Search',
                    hintStyle: TextStyle(
                        color: Color(0xff645BEB), fontFamily: "Ubuntu Light"),
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
            ],
          ),
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  String path;
  Function onTap;
  CircularButton({this.path, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          //margin: EdgeInsets.all(100.0),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, 1.5)),
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 5,
                    offset: Offset(0, -1.5)),
              ]),
          child: Center(
              child: SvgPicture.asset(
            path,
            fit: BoxFit.scaleDown,
          ))),
    );
  }
}
