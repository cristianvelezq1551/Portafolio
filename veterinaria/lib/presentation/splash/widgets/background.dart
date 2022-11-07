part of '../splash_screen.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> with TickerProviderStateMixin {
  List<Color> colorList = [
    AppColors.principal,
    Color.fromARGB(255, 139, 210, 228),
    AppColors.fondo2,
    AppColors.principal,
    AppColors.opc,
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color.fromARGB(255, 168, 237, 252);
  Color topColor = Color.fromARGB(255, 198, 160, 235);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = AppColors.principal;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1300),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}
