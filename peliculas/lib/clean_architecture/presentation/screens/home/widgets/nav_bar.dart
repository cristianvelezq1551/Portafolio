part of '../home_screen.dart';

List<IconData> _icons = [
  Icons.home,
  Icons.search,
  Icons.favorite_border,
  Icons.chat_bubble_outline
];

class _NavBar extends StatefulWidget {
  const _NavBar({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<_NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<_NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2,
      currentIndex: _index,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        _index = index;
        setState(() => widget.controller.jumpToPage(index));
      },
      items: List.generate(
        4,
        (index) => BottomNavigationBarItem(
          // backgroundColor: Colors.red,
          label: '',
          icon: Icon(_icons[index]),
        ),
      ),
    );
  }
}
// class _NavBar extends StatelessWidget {
//   const _NavBar({Key? key, required this.controller}) : super(key: key);

//   final PageController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: kToolbarHeight,
//       color: Theme.of(context).appBarTheme.backgroundColor,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(
//           4,
//           (index) => IconButton(
//             onPressed: () {},
//             // onPressed: () => controller.jumpToPage(index),
//             icon: Icon(
//               _icons[index],
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
