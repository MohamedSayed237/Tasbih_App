import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الاذكار"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/goldilocks-three-bears-bed.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
