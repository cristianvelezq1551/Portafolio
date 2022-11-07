import 'package:flutter/material.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/ecommerce/model/categorie_model.dart';
import 'package:veterinaria/presentation/ecommerce/model/pet_type.dart';
import 'package:veterinaria/presentation/theme/app_colors.dart';

class BodyCategories extends StatelessWidget {
  const BodyCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: kToolbarHeight * 1.5),
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: Container(
            height: size.height * 0.801,
            width: double.infinity,
            color: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: Container(
                child: Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: exampleCategories.length,
                        itemBuilder: (_, int index) {
                          return Container(
                            margin: EdgeInsets.all(15),
                            child: GridTile(
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                color: AppColors.opc,
                                child: Column(children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    height: kToolbarHeight * 2.5,
                                    width: kToolbarHeight * 2.5,
                                    child: Image.network(
                                        '${exampleCategories[index].logo}'),
                                  ),
                                  Container(
                                    child: Text(
                                      '${exampleCategories[index].name}',
                                      style: TextStyle(
                                          color: AppColors.fondo2,
                                          fontSize: kToolbarHeight * 0.3),
                                    ),
                                  )
                                ]),
                              ),
                            )),
                          );
                        })),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
