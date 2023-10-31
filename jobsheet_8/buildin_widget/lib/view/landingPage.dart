import 'package:flutter/material.dart';
import 'WidgetDown.dart';
import 'WidgetUp.dart';
import 'Nav.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            const NavWidget(),
            const WidgetUp(), // Merubah Widget ke WidgetUp
            const MyWidgetDown(),
          ],
        ),
      ),
    );
  }
}
