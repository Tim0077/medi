import 'package:flutter/material.dart';
import 'package:main_pro/doc.dart';
import 'package:main_pro/doclogin.dart';
import 'package:main_pro/login.dart';
import 'package:main_pro/pmdetailsform.dart';
import 'package:main_pro/signup.dart';
import 'package:main_pro/home.dart';
import 'dochome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
        '/pmform': (context) => Pmform(),
        '/doctor': (context) => Doc(),
        '/dochome': (context) => Dochome(),
        '/doctorlogin': (context) => Doclogin(),
      },
      initialRoute: '/doctor',
    );
  }
}
