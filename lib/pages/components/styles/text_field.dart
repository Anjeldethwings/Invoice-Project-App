import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledStyle extends StatelessWidget {
  String hint;

  TextFiledStyle({
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: InputBorder.none, hintText: hint),
    );
  }
}
