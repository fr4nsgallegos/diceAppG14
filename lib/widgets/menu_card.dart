import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  double screenWidth;
  Map<String, dynamic> menuMap;
  MenuCard({required this.screenWidth, required this.menuMap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Row(
        children: [
          // PRIMERA FORMA DE PONER UNA IMAGEN CON BORDES REDONDEADOS
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Image.network(
          //     "https://images.pexels.com/photos/28503598/pexels-photo-28503598.jpeg",
          //     height: screenWidth / 4,
          //     width: screenWidth / 4,
          //     fit: BoxFit.cover,
          //   ),
          // ),

          // SEGUNDA FORMA DE PONER UNA IMAGEN CON BORDES REDONDEADOS
          Container(
            height: screenWidth / 4,
            width: screenWidth / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(menuMap["imageUrl"]),
              ),
            ),
          ),

          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Menu ${menuMap["id"]}", style: TextStyle(fontSize: 20)),
              Text(
                menuMap["days"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              Text(
                "S/. ${menuMap["price"]}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
