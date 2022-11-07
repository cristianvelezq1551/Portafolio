part of '../ecommerce_screen.dart';

class CategoriesEcommerce extends StatefulWidget {
  final PageController controller;

  const CategoriesEcommerce({super.key, required this.controller});

  @override
  State<CategoriesEcommerce> createState() => _CategoriesEcommerceState();
}

class _CategoriesEcommerceState extends State<CategoriesEcommerce> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.builder(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        itemCount: exampleCategories.length,
        itemBuilder: ((_, int index) {
          final _category = exampleCategories[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'CategorieScreen');
            },
            child: Hero(
              tag: 'Categories',
              child: Container(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              // (index < 3)
                              // ?
                              NetworkImage('${_category.logo}'),
                          // : NetworkImage(
                          // 'https://cdn-icons-png.flaticon.com/512/58/58416.png?w=360'),
                          fit: BoxFit.cover,
                          onError: (_, __) => const Center(
                            child:
                                Icon(Icons.image_outlined, color: Colors.white),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.primaries[index],
                      ),
                      width: kToolbarHeight * 1.5,
                      height: kToolbarHeight * 1.5,
                      margin: const EdgeInsets.only(left: 18, right: 10),
                    ),
                    SizedBox(height: kToolbarHeight * 0.1),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      width: kToolbarHeight * 1.5,
                      height: kToolbarHeight * 0.7,
                      margin: const EdgeInsets.only(left: 18, right: 10),
                      child: Center(
                          child: Text(
                              // (index < 5) ?
                              '${_category.name}',
                              // : 'Ver más',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
