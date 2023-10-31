import 'package:flutter/material.dart';
import 'view/landingPage.dart';
import 'view/pertandingan.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/pertandingan': (context) => MyPertandingan(),
      },
    ),
  );
}
