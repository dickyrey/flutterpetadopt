class Pet {
  final String name;
  final String type;
  final String age;
  final String distance;
  final String address;
  final bool isMale;
  final String userImage;
  final String userName;
  final String datetime;
  final String description;
  final String image;
  final List<String> images;
  Pet({
    this.name,
    this.type,
    this.age,
    this.distance,
    this.datetime,
    this.address,
    this.description,
    this.isMale,
    this.userImage,
    this.userName,
    this.image,
    this.images,
  });
}

List<Pet> petList = [
  Pet(
    name: "Sola",
    type: "Abyssinian cat",
    isMale: false,
    address: "2105  Westwood Avenue",
    age: "2",
    datetime: "Jan 26, 2020",
    description:
        "My hob requires moving to another country, I don't have the opportunity to take the cat with me. I am looking for good people who will shelter my Solo.",
    distance: "3.6",
    userImage: "assets/user2.jpg",
    userName: "Laudya Cintya Anggraini",
    image: "assets/abys1.png",
    images: [
      "assets/abys1.png",
      "assets/abys2.png",
      "assets/abys3.png",
    ],
  ),
  Pet(
    name: "Sola",
    type: "Abyssinian cat",
    isMale: false,
    address: "2105  Westwood Avenue",
    age: "2",
    datetime: "Jan 26, 2020",
    description:
        "My hob requires moving to another country, I don't have the opportunity to take the cat with me. I am looking for good people who will shelter my Solo.",
    distance: "3.6",
    userImage: "assets/user2.jpg",
    userName: "Laudya Cintya Anggraini",
    image: "assets/abys1.png",
    images: [
      "assets/abys1.png",
      "assets/abys2.png",
      "assets/abys3.png",
    ],
  ),
];
