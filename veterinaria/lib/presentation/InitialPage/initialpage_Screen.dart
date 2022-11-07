import 'package:flutter/material.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:veterinaria/presentation/InitialPage/widgets/bottonNav.dart';
import 'package:veterinaria/presentation/ecommerce/ecommerce_initiaalpage/ecommerce_screen.dart';

final _controller = PageController();

List<Widget> _page = [
  HomeScreen(controller: _controller),
  EcommerceScreen(),
  ChatScreen(),
  ProfileScreen(),
  MapScreen(),
];

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                children: List.generate(
                  5,
                  (index) => _page[index],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BotNav(controller: _controller));
  }
}
