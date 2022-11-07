part of '../home_screen.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [_BottomAppBar(), ProfileBot()],
      ),
    );
  }
}

class ProfileBot extends StatelessWidget {
  const ProfileBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/avatar.png'))),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  const _BottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      child: Container(
        height: kToolbarHeight,
        width: size.width * 0.6,
        padding: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.principal, width: 3),
        ),
        child: Padding(
          padding: EdgeInsets.all(kToolbarHeight * 0.15),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  ' Buscar',
                  style: TextStyle(
                      color: Colors.grey[850],
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.principal),
                  child: Padding(
                      padding: EdgeInsets.all(kToolbarHeight * 0.13),
                      child: Center(
                          child: Icon(Icons.search, color: Colors.white)))),
            ],
          ),
        ),
      ),
    );
  }
}
