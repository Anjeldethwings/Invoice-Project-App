import 'package:circle/pages/components/profile_image.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeAppBar();
  }
}

class _HomeAppBar extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return // app bar
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //profile
                    ProfileImage(),

                    //Name
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Amila',
                            style: TextStyle(
                              fontFamily: 'RaleWay',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 59, 59, 59),
                            ),
                          ),
                          Text(
                            'Hello Amile, welcome',
                            style: TextStyle(
                              color: Color.fromARGB(255, 145, 145, 145),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //notification
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 224, 228),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.notifications,
                  ),
                ),
              ],
            ));
  }
}
