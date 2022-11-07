import 'package:flutter/material.dart';

part 'widgets/nav_bar.dart';
part 'widgets/app_bar.dart';

//GLOBALES
int _index = 0;

const List<Widget> _pages = [
  Screen1(),
  Screen2(),
  Screen3(),
  Screen4(),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();

    return Scaffold(
      appBar: _AppBar(controller: _controller),
      body: PageView(
        controller: _controller,
        children: List.generate(
          4,
          (index) => _pages[index],
        ),
      ),
      bottomNavigationBar: _NavBar(
        controller: _controller,
      ),
    );
  }
}

//WIDGETS DE HOME

//PANTALLAS

//Pantalla 1
class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[0],
    );
  }
}

//Pantalla 2
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[1],
    );
  }
}

//Pantalla 3
class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[2],
    );
  }
}

//Pantalla 4
class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[0],
    );
  }
}
