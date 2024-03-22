class PetButtonModel {
  final String imageUrl;
  final String title;

  PetButtonModel({
    required this.imageUrl,
    required this.title,
  });
}

List<PetButtonModel> petButtonList = [
  PetButtonModel(imageUrl: "assets/icons/cat_icon.png", title: "Cat"),
  PetButtonModel(imageUrl: "assets/icons/dog_icon.png", title: "Dog"),
  PetButtonModel(imageUrl: "assets/icons/parrot_icon.png", title: "Parrot"),
  PetButtonModel(imageUrl: "assets/icons/rabbit_icon.png", title: "Rabbit"),
];
