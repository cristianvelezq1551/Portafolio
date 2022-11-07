import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veterinaria/presentation/theme/app_colors.dart';

class AppBarCategories extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.principal,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          )),
      // centerTitle: true,
      // title: Text(
      //   'Categorias',
      //   style: TextStyle(color: AppColors.opc),
      // ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.shopping_bag))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
