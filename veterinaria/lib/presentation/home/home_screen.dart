import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/theme/dimensions.dart';
import 'package:veterinaria/presentation/widgets/buttons/icon_button.dart';

part 'widgets/Pet_scroll.dart';
part 'widgets/appbar.dart';
part 'widgets/ads.dart';
part 'widgets/learn.dart';

class HomeScreen extends StatefulWidget {
  final PageController controller;

  const HomeScreen({super.key, required this.controller});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var currentIndex = 0;

    final PageController controller;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBar(),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [],
            )))
          ],
        ));
  }
}

// SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         controller: ScrollController(),
//         child: Column(
//           // padding: EdgeInsets.all(20),
//           children: [
//             Container(
//                 height: kToolbarHeight * 2.5,
//                 child: PetsProfile(controller: _controller)),
//             SizedBox(height: kToolbarHeight * 0.6),
//             Padding(
//               padding: EdgeInsets.all(18),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: size.height * 0.12,
//                   child: ServicesVet(),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(18),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: kToolbarHeight * 3,
//                   child: _Ads(),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(18),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: kToolbarHeight * 3,
//                   child: _Ads(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
