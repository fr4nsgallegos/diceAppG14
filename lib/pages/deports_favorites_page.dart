import 'package:diceappg14/models/deport_model.dart';
import 'package:flutter/material.dart';

class DeportsFavoritesPage extends StatelessWidget {
  TextStyle titleStyle = TextStyle(fontSize: 23, fontWeight: FontWeight.bold);

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
      onPressed: () {},
      child: Text(deportModel.nombre, style: TextStyle(fontSize: 17)),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
          side: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }

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

            Wrap(
              spacing: 16, //espaciado horizontal entre elementos
              runSpacing: 5, //espaciado vertical entre filas
              alignment: WrapAlignment.spaceAround,
              children: [
                for (int i = 0; i < deportList.length; i++)
                  _buildDeportButton(deportList[i]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
