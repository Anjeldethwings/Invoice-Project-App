import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledStyle extends StatelessWidget {
  String hint;

  TextFiledStyle({Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: InputBorder.none, hintText: hint),
    );
  }
}
