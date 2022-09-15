import 'package:flutter/material.dart';

class Phons extends StatelessWidget {
  const Phons({super.key});

  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'welcome to Space page',
                  style: TextStyle(fontSize: 33),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}