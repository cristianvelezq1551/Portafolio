part of '../ecommerce_screen.dart';

class AppBarEcommerce extends StatefulWidget {
  const AppBarEcommerce({super.key});

  @override
  State<AppBarEcommerce> createState() => _AppBarEcommerceState();
}

class _AppBarEcommerceState extends State<AppBarEcommerce> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.94,
      height: size.height * 0.17,
      child: Column(
        children: [
          Row(children: [
            LocationBot(),
            Expanded(child: SizedBox()),
            CartBot(),
          ]),
          _BottomAppBarEcommerce()
        ],
      ),
    );
  }
}

class LocationBot extends StatelessWidget {
  const LocationBot({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 50,
      width: size.width * 0.4,
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Location'),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              'Carrera 58# 14sur 40',
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                  color: AppColors.principal,
                  fontSize: 18),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}

class CartBot extends StatelessWidget {
  const CartBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.principal, width: 3),
          borderRadius: BorderRadius.circular(15)),
      child: Icon(
        Iconsax.shopping_bag,
        color: Colors.black,
      ),
    );
  }
}

class _BottomAppBarEcommerce extends StatelessWidget {
  const _BottomAppBarEcommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(0),
        height: kToolbarHeight * 0.9,
        width: size.width * 0.9,
        padding: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.principal, width: 3),
        ),
        child: Padding(
          padding: EdgeInsets.all(kToolbarHeight * 0.10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  ' ¿Qué necesita tu mascota?',
                  style: TextStyle(
                      color: Colors.grey[850],
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.principal),
                  child: Padding(
                      padding: EdgeInsets.all(kToolbarHeight * 0.1),
                      child: Center(
                          child: Icon(Icons.search, color: Colors.white)))),
            ],
          ),
        ),
      ),
    );
  }
}
