part of '../register_screen.dart';

class CardRegister extends ConsumerWidget {
  final Widget child;

  const CardRegister({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      margin: EdgeInsets.only(top: 140, left: 30, right: 30),
      width: double.infinity,
      decoration: boxDecoration(),
      child: this.child,
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(45),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
        ]);
  }
}
