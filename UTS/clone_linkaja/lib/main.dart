import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widget/dashboard.dart';
import 'widget/history.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
           '/home': (context) => MyDashboard(),
           '/history': (context) =>  HistoryPage(),
      },
    );
  }
}
