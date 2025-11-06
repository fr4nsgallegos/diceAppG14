import 'package:diceappg14/models/deport_model.dart';
import 'package:flutter/material.dart';

class DeportsFavoritesPage extends StatefulWidget {
  @override
  State<DeportsFavoritesPage> createState() => _DeportsFavoritesPageState();
}

class _DeportsFavoritesPageState extends State<DeportsFavoritesPage> {
  TextStyle titleStyle = TextStyle(fontSize: 23, fontWeight: FontWeight.bold);
  List<DeportModel> favoriteDeportModelList = [];

  Widget _buildDeportButtonContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.red,
        border: Border.all(width: 2, color: Colors.orange),
      ),
      child: Text("Gimnasio", style: TextStyle(fontSize: 19)),
    );
  }

  Widget _buildDeportButton(DeportModel deportModel) {
    return ElevatedButton(
      onPressed: () {
        if (!deportModel.isFavorite) {
          deportModel.isFavorite = true;
          favoriteDeportModelList.add(deportModel);
        } else {
          deportModel.isFavorite = false;
          favoriteDeportModelList.remove(deportModel);
        }
        setState(() {});
      },
      child: Text(deportModel.nombre, style: TextStyle(fontSize: 17)),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        backgroundColor: deportModel.isFavorite
            ? Colors.orangeAccent
            : Colors.white,
        foregroundColor: deportModel.isFavorite ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
          side: BorderSide(
            color: deportModel.isFavorite ? Colors.white : Colors.orange,
            width: 2,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("¿Cuáles son tus deportes favoritos?", style: titleStyle),
            SizedBox(height: 16),
            Center(
              child: Wrap(
                spacing: 16, //espaciado horizontal entre elementos
                runSpacing: 5, //espaciado vertical entre filas
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (int i = 0; i < deportList.length; i++)
                    _buildDeportButton(deportList[i]),
                ],
              ),
            ),
            Divider(height: 40, thickness: 2, color: Colors.black),
            Text("Mis deportes favoritos son:", style: titleStyle),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              width: screenWidth,
              height: screenWidth / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Wrap(
                spacing: 16, //espaciado horizontal entre elementos
                runSpacing: 5, //espaciado vertical entre filas
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (int i = 0; i < favoriteDeportModelList.length; i++)
                    _buildDeportButton(favoriteDeportModelList[i]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
