part of '../products_screen.dart';

class AppBarProducts extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProducts({super.key});

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
      centerTitle: true,
      title: Text(
        'Detalles del producto',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.shopping_bag))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
