class CategoryModel {
  String? id;
  String? name;
  String? description;
  String? logo;

  CategoryModel({this.id, this.name, this.description, this.logo});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['logo'] = this.logo;
    return data;
  }
}

final exampleCategories = <CategoryModel>[
  CategoryModel(
      id: "1",
      name: "Alimentos perro",
      description: "",
      logo:
          "https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/kraken_generic_max_width_360/public/2021-09/PURINA-PROPLAN-SECCION-PERROS-ACTIVE-MIND_2_0.png?itok=1HtfBbWc"),
  CategoryModel(
      id: "2",
      name: "Snack perro",
      description: "",
      logo:
          "https://puppiscolombia.vteximg.com.br/arquivos/ids/168143-1000-1000/stickcarneasada200-1024transparente.png?v=637375427213230000"),
  CategoryModel(
      id: "3",
      name: "Alimentos gato",
      description: "",
      logo:
          "https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/2020-11/Purina-One-Salmon-Cat-Food-product.png?itok=7yNNfVW5"),
  CategoryModel(
      id: "4",
      name: "Snack gato",
      description: "",
      logo:
          "https://jumbo.vtexassets.com/arquivos/ids/348280/Snack-gato-premium-cubitos-de-salm-n-65-g-1-111689106.jpg?v=637309466193470000"),
  CategoryModel(
      id: "5",
      name: "Cuidado e higiene",
      description: "",
      logo:
          "http://canamor.com/wp-content/uploads/2017/04/AF_Mockup_Individual_Keldog_CanAmor_Shampoo_RGB_200318-213x278.png"),
  CategoryModel(
      id: "5",
      name: "Juguetes",
      description: "",
      logo:
          "https://puppost.co.nz/wp-content/uploads/2017/09/home-main-banner-dog-boxes.png"),
];
