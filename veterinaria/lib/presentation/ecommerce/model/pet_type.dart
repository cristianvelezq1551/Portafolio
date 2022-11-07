class PetTypeModel {
  String? logo;
  String? name;

  PetTypeModel({this.logo, this.name});

  PetTypeModel.fromJson(Map<String, dynamic> json) {
    logo = json['logo'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logo'] = this.logo;
    data['name'] = this.name;
    return data;
  }
}

final examplePetType = <PetTypeModel>[
  PetTypeModel(
      name: 'Perro',
      logo:
          "https://www.thedogandfriends.com/assets/img/index/img-hero_dog.png"),
  PetTypeModel(
      name: 'Gato',
      logo:
          "https://catadoptionteam.org/wp-content/uploads/2019/05/Transparent-OrangeWhiteCat-764x1024.png"),
  PetTypeModel(
      name: 'Otros',
      logo: "https://www.championminipets.cl/img/champion-minipets-conejo.png"),
];
