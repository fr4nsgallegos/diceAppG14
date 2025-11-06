import 'package:flutter/material.dart';

class DeportsFavoritesPage extends StatelessWidget {
  TextStyle titleStyle = TextStyle(fontSize: 23, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setstate Texts App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("¿Cuáles son tus deportes favoritos?", style: titleStyle),

            ElevatedButton(
              onPressed: () {},
              child: Text("Baloncesto", style: TextStyle(fontSize: 17)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  side: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.red,
                border: Border.all(width: 2, color: Colors.orange),
              ),
              child: Text("Gimnasio", style: TextStyle(fontSize: 19)),
            ),
          ],
        ),
      ),
    );
  }
}
