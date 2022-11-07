part of '../home_screen.dart';

class _Ads extends StatefulWidget {
  @override
  State<_Ads> createState() => _AdsState();
}

class _AdsState extends State<_Ads> {
  late final PageController _pageController;

  late Timer timer;

  bool onPress = false;

  void autoPlay() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (!onPress) {
        if (_pageController.offset !=
            _pageController.position.maxScrollExtent) {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        } else {
          _pageController.animateToPage(_pageController.initialPage,
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeIn);
        }
      }
    });
  }

  @override
  void initState() {
    _pageController = PageController(viewportFraction: .9);
    autoPlay();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (p) {
          print('SCROLL');
        },
        onTap: () {
          print('SOLTAMOS');
        },
        // onTapDown: (p) {
        //   print('ABAJO');
        //   onPress = true;
        //   timer.cancel();
        // },
        // onTapUp: (p) {
        //   print('ARRIBA');
        //   onPress = false;
        //   autoPlay();
        // },
        child: PageView(
          padEnds: false,
          scrollDirection: Axis.horizontal,
          controller: _pageController,
          children: List.generate(
            10,
            (index) => Container(
              color: Colors.primaries[index],
              // alignment: Alignment.center,
              // child: Stack(fit: StackFit.expand, children: [
              //   Image.network(
              //     '${index}',
              //     fit: BoxFit.cover,
              //   ),
              // ]),
            ),
          ),
        ));
  }
}
