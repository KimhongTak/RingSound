import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Welcome.dart';

void main() async {
  //asyn to call await
  WidgetsFlutterBinding.ensureInitialized(); //Open when you install
  await Firebase.initializeApp(); //waiting when firebase already installed
  runApp(Notification());
}

class Notification extends StatelessWidget {
  const Notification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FireAlarm",
      home: const Welcome(),
      // home: Text("hello"),
    );
  }
}
