import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_page.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding
      .ensureInitialized(); //To run the initialization for firebase before runApp
  await Firebase.initializeApp(); //Firebase Initialization.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Time Tracker',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: SignInPage());
  }
}
