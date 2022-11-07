part of '../home_screen.dart';

class _AppBar extends StatefulWidget implements PreferredSizeWidget {
  const _AppBar({Key? key, required this.controller}) : super(key: key);

  final PageController controller;

  @override
  State<_AppBar> createState() => _AppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarState extends State<_AppBar> {
  final ValueNotifier<bool> _isLastPage = ValueNotifier(false);

  //?Function listener
  void indexLister() {
    if (widget.controller.page?.toInt() == _pages.length - 1) {
      _isLastPage.value = true;
    } else {
      _isLastPage.value = false;
    }
  }

  @override
  void initState() {
    widget.controller.addListener(indexLister);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(indexLister);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('BUILD');
    return AppBar(
      title: const Text('Tinder'),
      centerTitle: true,
      actions: [
        ValueListenableBuilder(
          valueListenable: _isLastPage,
          builder: (_, bool value, child) {
            return value
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  )
                : const SizedBox();
          },
        )
      ],
    );
  }
}
