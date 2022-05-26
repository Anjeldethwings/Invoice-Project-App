import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return customeWidget();
  }
}

class customeWidget extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Image.asset(
        'icons/profile.PNG',
        height: 20,
      ),
    );
  }
}
