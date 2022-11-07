class AddsModel {
  String? logo;

  AddsModel({this.logo});

  AddsModel.fromJson(Map<String, dynamic> json) {
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logo'] = this.logo;
    return data;
  }
}

final examplesAdds = <AddsModel>[
  AddsModel(
      logo:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/pet-shop-template-design-db2bdd6360898230368c2bf7e43f475b_screen.jpg?ts=1625864260"),
  AddsModel(
      logo:
          "https://c8.alamy.com/compes/kb17pk/pet-shop-banner-concepto-horizontal-kb17pk.jpg"),
  AddsModel(
      logo:
          "https://i.pinimg.com/originals/c3/c0/d7/c3c0d727075049f29d42f2ab72fff4c1.jpg"),
  AddsModel(
      logo:
          "https://pawvie.in/wp-content/uploads/2020/10/food-4-568x200-1.jpg"),
  AddsModel(
      logo:
          "https://pawvie.in/wp-content/uploads/2020/10/online-pet-supplies.jpg"),
  AddsModel(
      logo:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpECMnKiq7gVIO--a2O6-b9ATdvt7hYsgmTJbWxazv-K9j8yrToHudahVqQsLpT7-es6g&usqp=CAU"),
];
