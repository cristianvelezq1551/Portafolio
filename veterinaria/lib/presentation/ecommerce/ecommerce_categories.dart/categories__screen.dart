import 'package:flutter/material.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_categories.dart/widgets/appBar_Categories.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_categories.dart/widgets/body_categories.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_categories.dart/widgets/text_background.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({super.key});

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCategories(),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              TextPet(),
              BodyCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
