import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veterinaria/presentation/theme/app_colors.dart';

import '../../../domain/helper/resources.dart';

var currentIndex = 0;

class BotNav extends StatefulWidget {
  final PageController controller;

  const BotNav({super.key, required this.controller});

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: AppColors.opc),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      // height: size.width * .155,
      height: size.width * .19,
      child: ListView.builder(
        controller: ScrollController(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: size.width * .01),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
              widget.controller.jumpToPage(index);
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: size.width * .014),
              Icon(
                  index == currentIndex
                      ? listOfIcons[index]
                      : listOfIcons2[index],
                  size: size.width * .076,
                  color: index == currentIndex
                      ? AppColors.principal
                      : AppColors.opc2),
              AnimatedContainer(
                duration: Duration(milliseconds: 1500),
                curve: Curves.fastLinearToSlowEaseIn,
                margin: EdgeInsets.only(
                  top: index == currentIndex ? 0 : size.width * .023,
                  right: size.width * .0215,
                  left: size.width * .0215,
                ),
                width: size.width * .153,
                height: index == currentIndex ? size.width * .014 : 0,
                decoration: BoxDecoration(
                  color: AppColors.principal,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<IconData> listOfIcons = [
  Iconsax.pet5,
  Icons.add_business_rounded,
  Iconsax.message_text_15,
  Icons.account_circle,
  Iconsax.location5,
];
List<IconData> listOfIcons2 = [
  Iconsax.pet,
  Icons.add_business_outlined,
  Iconsax.message_text,
  Icons.account_circle_outlined,
  Iconsax.location4,
];
