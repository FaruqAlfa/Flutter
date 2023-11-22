// convert.dart
import 'package:flutter/material.dart';

class TemperatureConverter extends StatelessWidget {
  final double kelvinResult;
  final double reamurResult;
  final Function() convertTemperature;

  TemperatureConverter({
    required this.kelvinResult,
    required this.reamurResult,
    required this.convertTemperature,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Suhu dalam Kelvin:', style: TextStyle(fontSize: 18)),
              Text('Suhu dalam Reamur:', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text('$kelvinResult', style: TextStyle(fontSize: 40)),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text('$reamurResult', style: TextStyle(fontSize: 40)),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(top: 250),
          child: ElevatedButton(
            onPressed: convertTemperature,
            child: Container(
              width: double.infinity, // Lebar penuh
              child: Text('Konversi Suhu', textAlign: TextAlign.center),
            ),
          ),
        ),
      ],
    );
  }
}
