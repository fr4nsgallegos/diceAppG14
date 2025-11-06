class MenuModel {
  int id;
  double price;
  String days;
  String imageUrl;

  MenuModel({
    required this.id,
    required this.price,
    required this.days,
    required this.imageUrl,
  });
}

List<MenuModel> menuModelList = [
  MenuModel(
    id: 1,
    days: "Lun - Mar -Mie",
    price: 5,
    imageUrl:
        "https://images.pexels.com/photos/28503598/pexels-photo-28503598.jpeg",
  ),

  MenuModel(
    id: 2,
    days: "Lun - Mar",
    price: 7,
    imageUrl:
        "https://images.pexels.com/photos/33432683/pexels-photo-33432683.jpeg?",
  ),

  MenuModel(
    id: 3,
    days: "Jue - Vier",
    price: 6.5,
    imageUrl:
        "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg",
  ),

  MenuModel(
    id: 4,
    days: "Sab",
    price: 9,
    imageUrl:
        "https://images.pexels.com/photos/6163259/pexels-photo-6163259.jpeg",
  ),
  MenuModel(
    id: 5,
    days: "Dom",
    price: 10,
    imageUrl:
        "https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg",
  ),
];
