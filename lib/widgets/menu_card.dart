import 'package:diceappg14/models/menu_model.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  double screenWidth;
  // Map<String, dynamic> menuMap;
  MenuModel menuModel;
  int index;
  Function(int?) onTap;
  MenuCard({
    required this.screenWidth,
    // required this.menuMap,
    required this.menuModel,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(menuModel.isSelected == true ? null : index);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: menuModel.isSelected ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 2,
            color: menuModel.isSelected ? Colors.white : Colors.black,
          ),
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
                  // image: NetworkImage(menuMap["imageUrl"]),
                  image: NetworkImage(menuModel.imageUrl),
                ),
              ),
            ),

            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "Menu ${menuMap["id"],
                  "Menu ${menuModel.id}",
                  style: TextStyle(
                    fontSize: 20,
                    color: menuModel.isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  // menuMap["days"],
                  menuModel.days,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: menuModel.isSelected ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  // "S/. ${menuMap["price"]}",
                  "S/. ${menuModel.price}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: menuModel.isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
