import 'package:flutter/material.dart';
import 'package:tubes_kel3/widgets/custom_text_style.dart';
import 'package:tubes_kel3/utils.dart';

class customTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool? hiddenText;
  final TextInputType? textInputType;

  customTextField(
      {required this.label,
      required this.hint,
      this.textInputType,
      this.hiddenText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
      child: TextField(
        focusNode: FocusNode(),
        obscureText: hiddenText ??
            false, // Menggunakan nilai default jika hiddenText adalah null
        autofocus: true,
        style: SafeGoogleFont(
          'Urbanist',
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 12),
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
}
