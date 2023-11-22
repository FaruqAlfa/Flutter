// main.dart
import 'package:flutter/material.dart';
import 'input.dart';
import 'convert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suhu Converter',
      home: TemperatureResult(),
    );
  }
}

class TemperatureResult extends StatefulWidget {
  @override
  _TemperatureResultState createState() => _TemperatureResultState();
}

class _TemperatureResultState extends State<TemperatureResult> {
  TextEditingController _celsiusController = TextEditingController();
  double _kelvinResult = 0.0;
  double _reamurResult = 0.0;

  void _convertTemperature() {
    if (_celsiusController.text.isNotEmpty) {
      double celsius = double.parse(_celsiusController.text);
      setState(() {
        _kelvinResult = celsius + 273.15;
        _reamurResult = celsius * 4 / 5;
      });
    } else {
      setState(() {
        _kelvinResult = 0.0;
        _reamurResult = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konverter Suhu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TemperatureInput(celsiusController: _celsiusController),
              TemperatureConverter(
                kelvinResult: _kelvinResult,
                reamurResult: _reamurResult,
                convertTemperature: _convertTemperature,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
