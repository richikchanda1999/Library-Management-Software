import 'dart:convert';

import 'package:library_management/Model/Book.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

var bookSearchController = BehaviorSubject<List<Book>>();
Function(List<Book>) get bookAdd => bookSearchController.sink.add;
Stream<List<Book>> get bookStream => bookSearchController.stream;

void fetchBooks(String url) async {
  final res = await http.get(url);
  if (res.statusCode == 200) {
    String ret = res.body;
    //print(ret);
    parseBookJson(ret);
  } else {
    throw Exception('Error: ${res.statusCode}');
  }
}

void parseBookJson(String jsonStr) {
  final jsonMap = json.decode(jsonStr);
  final jsonList = (jsonMap['items'] as List);
  List<Book> list = List();
  jsonList.forEach((l) {
    var vi = l['volumeInfo'];
    list.add(Book(
        title: vi['title'],
        author: (vi['authors'] != null)
            ? (vi['authors'] as List).join(", ")
            : "No author found",
        thumbnailUrl: (vi['imageLinks'] != null)
            ? vi['imageLinks']['smallThumbnail']
            : "",
        categories: (vi['categories'] != null)
            ? (vi['categories'] as List).join(", ")
            : "Not classified"));
  });
  bookAdd(list);
}
