part of '../products_screen.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height * 0.75),
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: Container(
            height: size.height * 0.15,
            width: double.infinity,
            color: AppColors.principal,
            child: GestureDetector(
              child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Iconsax.shopping_cart,
                                color: AppColors.principal,
                              ),
                              SizedBox(width: kToolbarHeight * 0.5),
                              Text('Agrega a tu carrito',
                                  style: TextStyle(
                                      color: AppColors.principal,
                                      fontSize: kToolbarHeight * 0.3))
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
