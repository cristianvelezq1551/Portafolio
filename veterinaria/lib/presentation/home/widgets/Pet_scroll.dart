part of '../home_screen.dart';

class PetsProfile extends StatefulWidget {
  final PageController controller;

  const PetsProfile({super.key, required this.controller});

  @override
  State<PetsProfile> createState() => _PetsProfileState();
}

class _PetsProfileState extends State<PetsProfile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.builder(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(40)),
                color: Colors.primaries[index],
              ),
              width: size.height * 0.175,
              margin: const EdgeInsets.only(left: 18, right: 10),
            ),
          );
        }),
      ),
    );
  }
}
