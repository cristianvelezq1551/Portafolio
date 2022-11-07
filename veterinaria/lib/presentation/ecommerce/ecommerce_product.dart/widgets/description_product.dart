part of '../products_screen.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: kToolbarHeight * 6),
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: Container(
            height: kToolbarHeight * 6.5,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: AppColors.principal,
                child: ListView(
                  children: [
                    Container(
                      height: kToolbarHeight * 2,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
