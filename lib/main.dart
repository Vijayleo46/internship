import 'package:internship/registrationform.dart';
import 'package:internship/radiobutton.dart';
import 'package:internship/checkbox.dart';
import 'package:internship/button.dart';
import 'package:internship/whatsapp.dart';
import 'package:internship/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:internship/loginpage.dart';

void main(){
  runApp(MyApp());
}
class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashApp(),
         '/login' : (context) => loginpage(),
        "/radio":(context) =>radiobutton(),
        "/register":(context) =>registrationform()
      },
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
       // home: SplashApp(),
    );
  }
}
