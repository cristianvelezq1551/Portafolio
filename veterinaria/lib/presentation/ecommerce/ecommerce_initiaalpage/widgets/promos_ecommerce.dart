part of '../ecommerce_screen.dart';

class PromosEcommerce extends StatefulWidget {
  final PageController controller;

  const PromosEcommerce({super.key, required this.controller});

  @override
  State<PromosEcommerce> createState() => _PromosEcommerceState();
}

class _PromosEcommerceState extends State<PromosEcommerce> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: ((_, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: NetworkImage('${_category.logo}'),
                //   fit: BoxFit.cover,
                //   onError: (_, __) => const Center(
                //     child: Icon(Icons.image_outlined, color: Colors.white),
                //   ),
                // ),
                borderRadius: BorderRadius.circular(30),
                color: Colors.primaries[index],
              ),
              width: size.width * 0.9,
              height: kToolbarHeight * 2,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
            ),
          );
        }),
      ),
    );
  }
}
