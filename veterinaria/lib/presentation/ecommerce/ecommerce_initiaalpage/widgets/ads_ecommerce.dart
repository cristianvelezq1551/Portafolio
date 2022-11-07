part of '../ecommerce_screen.dart';

class _AdsEcommerce extends StatefulWidget {
  @override
  State<_AdsEcommerce> createState() => _AdsState();
}

class _AdsState extends State<_AdsEcommerce> {
  late final PageController _pageController;

  late Timer timer;

  bool onPress = false;

  void autoPlay() {
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (!onPress) {
        if (_pageController.offset !=
            _pageController.position.maxScrollExtent) {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        } else {
          _pageController.animateToPage(_pageController.initialPage,
              duration: const Duration(milliseconds: 1200),
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
            examplesAdds.length,
            (index) => Container(
              color: AppColors.principal,
              alignment: Alignment.center,
              child: Stack(fit: StackFit.expand, children: [
                Image.network(
                  '${examplesAdds[index].logo}',
                  fit: BoxFit.cover,
                ),
              ]),
            ),
          ),
        ));
  }
}
