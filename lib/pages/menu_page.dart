import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Setstate Cards Assets App"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color(0xffEBA049),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Selecciona tu mejor opción:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.red,
              child: Row(
                children: [
                  Image.network(
                    "https://images.pexels.com/photos/28503598/pexels-photo-28503598.jpeg",
                    height: screenWidth / 4,
                    width: screenWidth / 4,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Menu 1",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Lun - Mar - Vier",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "S/. 5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
