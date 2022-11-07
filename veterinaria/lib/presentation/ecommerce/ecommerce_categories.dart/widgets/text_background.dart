import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/ecommerce/model/pet_type.dart';
import 'package:veterinaria/presentation/theme/app_colors.dart';

class TextPet extends StatefulWidget {
  const TextPet({super.key});

  @override
  State<TextPet> createState() => _TextPetState();
}

class _TextPetState extends State<TextPet> {
  get index => 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.43,
      width: double.infinity,
      color: AppColors.principal,
      child: Column(
        children: [
          Text(
            'Nuestras categorías',
            style: TextStyle(
                fontSize: kToolbarHeight * 0.6,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(height: kToolbarHeight * 0.15),
          Text(
            'Elige la categoria y compra',
            style:
                TextStyle(fontSize: kToolbarHeight * 0.33, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
