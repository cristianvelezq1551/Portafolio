import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:veterinaria/domain/helper/resources.dart';

part 'widgets/questions.dart';

final _controller = PageController();
final index = 0;

class TestingScreen extends ConsumerWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          4,
          (index) => Card(
              _controller, _Question[index], _answer1[index], _answer2[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.principal,
          elevation: 0,
          onPressed: () {
            Navigator.pushNamed(context, 'InitialPage');
          },
          child: Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
