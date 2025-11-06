class DeportModel {
  final String nombre;
  bool isFavorite;

  DeportModel({required this.nombre, this.isFavorite = false});
}

List<DeportModel> deportList = [
  DeportModel(nombre: "Gimnasio"),
  DeportModel(nombre: "Crossfit"),
  DeportModel(nombre: "Corredor"),
  DeportModel(nombre: "Baloncesto"),
  DeportModel(nombre: "Nadador"),
  DeportModel(nombre: "Golf"),
  DeportModel(nombre: "Tenis"),
];
