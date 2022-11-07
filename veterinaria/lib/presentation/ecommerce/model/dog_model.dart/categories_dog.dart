class CategoryModelDog {
  String? id;
  String? name;
  String? description;
  String? logo;

  CategoryModelDog({this.id, this.name, this.description, this.logo});

  CategoryModelDog.fromJson(Map<String, dynamic> json) {
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

final exampleCategoriesDog = <CategoryModelDog>[
  CategoryModelDog(
      id: "1",
      name: "Alimentos secos",
      description: "",
      logo:
          "https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/kraken_generic_max_width_360/public/2021-09/PURINA-PROPLAN-SECCION-PERROS-ACTIVE-MIND_2_0.png?itok=1HtfBbWc"),
  CategoryModelDog(
      id: "2",
      name: "Alimentos humedos",
      description: "",
      logo:
          "https://puppiscolombia.vteximg.com.br/arquivos/ids/168143-1000-1000/stickcarneasada200-1024transparente.png?v=637375427213230000"),
  CategoryModelDog(
      id: "3",
      name: "accesorios",
      description: "",
      logo:
          "https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/2020-11/Purina-One-Salmon-Cat-Food-product.png?itok=7yNNfVW5"),
  CategoryModelDog(
      id: "4",
      name: "Cuidado e higiene",
      description: "",
      logo:
          "http://canamor.com/wp-content/uploads/2017/04/AF_Mockup_Individual_Keldog_CanAmor_Shampoo_RGB_200318-213x278.png"),
  CategoryModelDog(
      id: "5",
      name: "Juguetes",
      description: "",
      logo:
          "https://puppost.co.nz/wp-content/uploads/2017/09/home-main-banner-dog-boxes.png"),
];
