part of '../register_screen.dart';

class BackgroundColorReg extends ConsumerWidget {
  const BackgroundColorReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipPath(
      // clipper: BezClipper(),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.fondo2.withOpacity(0.8), AppColors.fondo2])),
        width: double.infinity,
        height: size.height * 0.43,
        child: Stack(
          children: [
            Positioned(
              child: Circle(),
              left: 330,
              top: 40,
            ),
            Positioned(
              child: Circle(),
              left: 250,
              top: 300,
            ),
            Positioned(
              child: Circle(),
              left: 80,
              top: 160,
            ),
            Positioned(
              child: Circle(),
              left: -30,
              top: -10,
            ),
          ],
        ),
      ),
    );
  }
}

class BezClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // final Offset p0 = Offset(0, size.height * 0.65);
    // final Offset p1 = Offset(size.width * 0.5, size.height);
    // final Offset p2 = Offset(size.width, size.height * 0.65);
    final path = Path();
    // path.lineTo(p0.dx, p0.dy);
    // path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return Path();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Circle extends ConsumerWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: AppColors.opc2.withOpacity(0.24)),
    );
  }
}

class HeaderIcon extends ConsumerWidget {
  const HeaderIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Icon(
          Icons.person_pin,
          color: AppColors.opc2,
          size: size.height * 0.13,
        ),
      ),
    );
  }
}
