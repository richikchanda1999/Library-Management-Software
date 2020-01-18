import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_auth/firebase_auth.dart';

var usernameController = BehaviorSubject<String>();
Function(String) get addUsername => usernameController.sink.add;
Stream<String> get usernameStream => usernameController.stream;

var passwordController = BehaviorSubject<String>();
Function(String) get addPassword => passwordController.sink.add;
Stream<String> get passwordStream => passwordController.stream;

Future<int> login() async {
  String username = usernameController.value;
  String password = passwordController.value;
  print("Username : $username, Password : $password");

  FirebaseUser user = (await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: username, password: password))
      .user;
  return (user == null) ? 0 : 1;
}
