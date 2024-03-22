class PetModel {
  String name;
  String imageUrl;
  String breed;
  int age;
  String gender;
  double distance;
  PetOwner petOwner;

  PetModel({
    required this.name,
    required this.imageUrl,
    required this.breed,
    required this.age,
    required this.gender,
    required this.distance,
    required this.petOwner,
  });
}

class PetOwner {
  String name;
  String imageUrl;
  DateTime dateTime;

  PetOwner({required this.name, required this.imageUrl, required this.dateTime});
}

List<PetModel> bunnies = [
  PetModel(
      name: "Floppy",
      imageUrl: "assets/images/rabbit/rabbit1.png",
      breed: "Holland Lop",
      age: 2,
      gender: "Female",
      distance: 1.2,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Thumper",
      imageUrl: "assets/images/rabbit/rabbit2.png",
      breed: "Mini Rex",
      age: 1,
      gender: "Male",
      distance: 0.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
];

List<PetModel> cats = [
  PetModel(
      name: "Whiskers",
      imageUrl: "assets/images/cat/cat1.png",
      breed: "Maine Coon",
      age: 4,
      gender: "Male",
      distance: 1.2,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Luna",
      imageUrl: "assets/images/cat/cat2.png",
      breed: "Siamese",
      age: 2,
      gender: "Female",
      distance: 0.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Simba",
      imageUrl: "assets/images/cat/cat3.png",
      breed: "Persian",
      age: 5,
      gender: "Male",
      distance: 3.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Coco",
      imageUrl: "assets/images/cat/cat4.png",
      breed: "Bengal",
      age: 3,
      gender: "Female",
      distance: 2.1,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
];

List<PetModel> dogs = [
  PetModel(
      name: "Buddy",
      imageUrl: "assets/images/dog/dog1.png",
      breed: "Golden Retriver",
      age: 3,
      gender: "Male",
      distance: 1.2,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Lola",
      imageUrl: "assets/images/dog/dog2.png",
      breed: "Poodle",
      age: 2,
      gender: "Female",
      distance: 0.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Rocky",
      imageUrl: "assets/images/dog/dog3.png",
      breed: "German Shepherd",
      age: 5,
      gender: "Male",
      distance: 3.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Daisy",
      imageUrl: "assets/images/dog/dog4.png",
      breed: "Labrador Retriever",
      age: 3,
      gender: "Female",
      distance: 2.1,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
];

List<PetModel> parrots = [
  PetModel(
      name: "Charlie",
      imageUrl: "assets/images/bird/bird1.png",
      breed: "African Grey",
      age: 4,
      gender: "Male",
      distance: 1.2,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Kiwi",
      imageUrl: "assets/images/bird/bird2.png",
      breed: "Cockatiel",
      age: 2,
      gender: "Female",
      distance: 0.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Rio",
      imageUrl: "assets/images/bird/bird3.png",
      breed: "Macaw",
      age: 7,
      gender: "Male",
      distance: 3.8,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
  PetModel(
      name: "Sunny",
      imageUrl: "assets/images/bird/bird4.png",
      breed: "Sun Conure",
      age: 3,
      gender: "Female",
      distance: 2.1,
      petOwner: PetOwner(
          name: "Clara Cloe",
          imageUrl: "https://randomuser.me/api/potraits/women/70.jpg",
          dateTime: DateTime(2019, 7, 18))),
];

