import 'package:flutter/material.dart';

class HomeAmount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeAmount();
  }
}

class _HomeAmount extends State<HomeAmount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '£',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 59, 59, 59),
                ),
              ),
              Text(
                '150,00,00',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 59, 59, 59),
                ),
              ),
              Text(
                '.00',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 59, 59, 59),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 224, 228),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    '£ GBP',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
