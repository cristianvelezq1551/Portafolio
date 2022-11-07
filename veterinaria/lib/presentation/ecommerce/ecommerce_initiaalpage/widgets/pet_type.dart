part of '../ecommerce_screen.dart';

class PetType extends StatelessWidget {
  const PetType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          height: kToolbarHeight * 2.2,
          // color: AppColors.principal,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (_, int index) {
                  final _petType = examplePetType[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Hero(
                      tag: 'petType',
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: kToolbarHeight * 1.74,
                          width: kToolbarHeight * 1.92,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                    '${_petType.logo}',
                                  )),
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ClipRRect(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    color: Colors.white12,
                                    child: Text(
                                      '${_petType.name}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
