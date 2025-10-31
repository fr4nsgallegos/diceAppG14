import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Dice App G14"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                // BORDES REDONDEADOS
                // primera forma
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                "assets/images/dice1.png",
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
