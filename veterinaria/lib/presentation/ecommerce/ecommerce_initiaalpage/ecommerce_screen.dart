import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/ecommerce/model/ads_model.dart';
import 'package:veterinaria/presentation/ecommerce/model/categorie_model.dart';
import 'package:veterinaria/presentation/ecommerce/model/dog_model.dart/categories_dog.dart';
import 'package:veterinaria/presentation/ecommerce/model/pet_type.dart';
import 'package:veterinaria/presentation/theme/app_colors.dart';
import 'package:veterinaria/presentation/theme/dimensions.dart';

part 'widgets/ads_ecommerce.dart';
part 'widgets/appbar_ecommerce.dart';
part 'widgets/categories_ecommerce.dart';
part 'widgets/promos_ecommerce.dart';
part 'widgets/pet_type.dart';

class EcommerceScreen extends ConsumerWidget {
  const EcommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: kToolbarHeight * 0.4),
          AppBarEcommerce(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: kToolbarHeight * 2.1,
                      child: _AdsEcommerce(),
                    ),
                  ),
                ),
                SizedBox(height: kToolbarHeight * 0.3),
                Tittle(),
                PetType(),
                Tittle1(),
                SizedBox(height: kToolbarHeight * 0.2),
                Container(
                    height: kToolbarHeight * 2.4,
                    child: CategoriesEcommerce(controller: PageController())),
                // SizedBox(height: kToolbarHeight * 0.1),

                Tittle2(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                      width: size.width * 0.95,
                      height: 800,
                      child: PromosEcommerce(controller: PageController())),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Padding Tittle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Text(
        'Busca tus productos',
        style: TextStyle(
            color: Colors.black,
            fontSize: kToolbarHeight * 0.4,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding Tittle1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        '¿Cómo podemos ayudarte hoy?',
        style: TextStyle(
            color: Colors.black,
            fontSize: kToolbarHeight * 0.6,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding Tittle2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        '¡Descuentazos!',
        style: TextStyle(
            color: AppColors.principal,
            fontSize: kToolbarHeight * 0.4,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
