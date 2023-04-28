// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter/pages/train.dart';
import 'package:counter/pages/welcome.dart';
import 'package:flutter/services.dart';
import 'package:counter/pages/Home.dart';



void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      initialRoute: '/',

      routes: {
        '/': (context) => const Welcome(),
        "/My train": (context) => CounterscreenState(),
        "/Home": (context) =>Home(),

      },
      debugShowCheckedModeBanner:false,
    );
  }

}
