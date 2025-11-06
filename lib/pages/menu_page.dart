import 'package:diceappg14/models/menu_model.dart';
import 'package:diceappg14/widgets/menu_card.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int? selectedMenuIndex;

  // final List<Map<String, dynamic>> _menuList = [
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

  void onMenuTap(int? index) {
    selectedMenuIndex = index;
    for (int i = 0; i < menuModelList.length; i++) {
      menuModelList[i].isSelected = i == selectedMenuIndex;
    }
    setState(() {});
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
                  index: i,
                  onTap: onMenuTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
