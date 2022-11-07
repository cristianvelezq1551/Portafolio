import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:animations/animations.dart';
import 'package:line_icons/line_icons.dart';
import 'dart:math';

import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/theme/app_colors.dart';

part 'widgets/ultimate_page.dart';

final blue = AppColors.principal;
const kTitleStyle = TextStyle(
    fontSize: 30, color: Color(0xFF01002f), fontWeight: FontWeight.bold);
const kSubtitleStyle = TextStyle(fontSize: 22, color: Color(0xff85c4c5));

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fondo,
      body: SafeArea(
        child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Slide(
                  hero: Image.asset("assets/page1onBoarding.png"),
                  title: "Boost your traffic",
                  subtitle:
                      "Outreach to many social networks to improve your statistics",
                  onNext: nextPage),
              Slide(
                  hero: Image.asset(
                    "assets/shop.png",
                    height: 300,
                    width: 300,
                  ),
                  title: "Give the best solution",
                  subtitle:
                      "We will give best solution for your business isues",
                  onNext: nextPage),
              Slide(
                  hero: Image.asset(
                    "assets/page3onBoarding.png",
                  ),
                  title: "Reach the target",
                  subtitle:
                      "With our help, it will be easier to achieve your goals",
                  onNext: nextPage),
              UltimateOnBoarding()
            ]),
      ),
    );
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }
}

class Slide extends StatelessWidget {
  final Widget hero;
  final String title;
  final String subtitle;
  final VoidCallback onNext;

  const Slide(
      {Key? key,
      required this.hero,
      required this.title,
      required this.subtitle,
      required this.onNext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: hero),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                title,
                style: kTitleStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                subtitle,
                style: kSubtitleStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 35,
              ),
              ProgressButton(onNext: onNext),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'InitialPage');
          },
          child: const Text(
            "Skip",
            style: kSubtitleStyle,
          ),
        ),
        const SizedBox(
          height: 4,
        )
      ],
    );
  }
}

class ProgressButton extends StatelessWidget {
  final VoidCallback onNext;
  const ProgressButton({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: Stack(children: [
        AnimatedIndicator(
          duration: const Duration(seconds: 10),
          size: 75,
          callback: onNext,
        ),
        Center(
          child: GestureDetector(
            child: Container(
              height: 60,
              width: 60,
              child: const Center(
                  child: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,
                size: 45,
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99), color: blue),
            ),
            onTap: onNext,
          ),
        )
      ]),
    );
  }
}

class AnimatedIndicator extends StatefulWidget {
  final Duration duration;
  final double size;
  final VoidCallback callback;
  const AnimatedIndicator(
      {Key? key,
      required this.duration,
      required this.size,
      required this.callback})
      : super(key: key);

  @override
  _AnimatedIndicatorState createState() => _AnimatedIndicatorState();
}

class _AnimatedIndicatorState extends State<AnimatedIndicator>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = Tween(begin: 0.0, end: 100.0).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reset();
          widget.callback();
        }
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return CustomPaint(
              size: Size(widget.size, widget.size),
              painter: ProgressPainter(animation.value));
        });
  }
}

class ProgressPainter extends CustomPainter {
  final double progress;
  ProgressPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    // setup
    var linePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = blue;

    var circlePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = blue;

    final radians = (progress / 100) * 2 * pi;
    _drawArc(canvas, linePaint, circlePaint, -pi / 2, radians, size);
  }

  void _drawArc(
    Canvas canvas,
    Paint linePaint,
    Paint circlePaint,
    double startRadian,
    double sweepRadian,
    Size size,
  ) {
    final centerX = size.width / 2, centerY = size.height / 2;
    final centerOffset = Offset(centerX, centerY);
    final double radius = min(size.width, size.height) / 2;

    canvas.drawArc(Rect.fromCircle(center: centerOffset, radius: radius),
        startRadian, sweepRadian, false, linePaint);

    final x = radius * (1 + sin(sweepRadian)),
        y = radius * (1 - cos(sweepRadian));
    final circleOffset = Offset(x, y);
    canvas.drawCircle(circleOffset, 5, circlePaint);
  }

  @override
  bool shouldRepaint(CustomPainter old) => true;
}
