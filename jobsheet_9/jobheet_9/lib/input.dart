// input.dart
import 'package:flutter/material.dart';

class TemperatureInput extends StatelessWidget {
  final TextEditingController celsiusController;

  TemperatureInput({required this.celsiusController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: celsiusController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Masukkan Suhu (Celsius)',
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
