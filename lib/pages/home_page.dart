import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Dice App G14"), centerTitle: true),
      body: Center(
        child: Column(children: [Image.asset("assets/images/dice1.png")]),
      ),
    );
  }
}
