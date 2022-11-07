import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../theme/app_colors.dart';

part 'widgets/appbar_products.dart';
part 'widgets/add_product.dart';
part 'widgets/description_product.dart';
part 'widgets/product_image.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarProducts(),
      body: Container(
        color: Colors.purple,
        child: Stack(
          children: [
            ImageProduct(),
            DescriptionProduct(),
            AddProduct(),
          ],
        ),
      ),
    );
  }
}
