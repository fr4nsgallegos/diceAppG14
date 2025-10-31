import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nDado = 1;

  void shuffleDado() {
    nDado = Random().nextInt(6) + 1;
    print(nDado);
    setState(() {});
  }

  void aumentarDato() {
    nDado = nDado == 6 ? 1 : nDado += 1;

    // if (nDado == 6) {
    //   nDado = 1;
    // } else {
    //   nDado += 1;
    // }
    setState(() {});
  }

  void restarDado() {
    nDado = nDado == 1 ? 6 : nDado -= 1;
    // if (nDado == 1) {
    //   nDado = 6;
    // } else {
    //   nDado -= 1;
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                // segunda forma
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(16),
                //   topLeft: Radius.circular(16),
                // ),

                // tercera forma
                // shape: BoxShape
                //     .circle, //convierte el container en un circulo perfecto
              ),
              child: Image.asset(
                "assets/images/dice$nDado.png",
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(
                  onPressed: () {
                    restarDado();
                  },
                  child: Icon(Icons.arrow_left_rounded),
                ),
                ElevatedButton(
                  onPressed: () {
                    shuffleDado();
                  },
                  child: Icon(Icons.shuffle),
                ),
                ElevatedButton(
                  onPressed: () {
                    aumentarDato();
                  },
                  child: Icon(Icons.arrow_right_rounded),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                nDado = 6;
                setState(() {});
              },
              child: Text("Cambiar a dado 6"),
            ),
          ],
        ),
      ),
    );
  }
}
