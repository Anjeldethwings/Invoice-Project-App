import 'package:flutter/material.dart';

import 'components/home_appbar.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<Profile> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            HomeAppBar(),
          ]),
    ));
  }
}
