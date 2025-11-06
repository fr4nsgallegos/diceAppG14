import 'package:diceappg14/models/menu_model.dart';
import 'package:diceappg14/widgets/menu_card.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  // final List<Map<String, dynamic>> _menuList = [
  //   {
  //     "id": 1,
  //     "days": "Lun - Mar -Mie",
  //     "price": 5,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/28503598/pexels-photo-28503598.jpeg",
  //   },
  //   {
  //     "id": 2,
  //     "days": "Lun - Mar",
  //     "price": 7,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/33432683/pexels-photo-33432683.jpeg?",
  //   },
  //   {
  //     "id": 3,
  //     "days": "Jue - Vier",
  //     "price": 6.5,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg",
  //   },
  //   {
  //     "id": 4,
  //     "days": "Sab",
  //     "price": 9,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/6163259/pexels-photo-6163259.jpeg",
  //   },
  //   {
  //     "id": 5,
  //     "days": "Dom",
  //     "price": 10,
  //     "imageUrl":
  //         "https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg",
  //   },
  // ];

  Widget _buildMenuCard(double screenWidth, Map<String, dynamic> menuMap) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selecciona tu mejor opción:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Column(
              children: List.generate(
                // _menuList.length,
                menuModelList.length,
                (i) => MenuCard(
                  screenWidth: screenWidth,
                  menuModel: menuModelList[i],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
