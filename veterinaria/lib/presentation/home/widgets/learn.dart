part of '../home_screen.dart';

class ServicesVet extends StatefulWidget {
  const ServicesVet({Key? key}) : super(key: key);

  @override
  _ServicesVetState createState() => _ServicesVetState();
}

class _ServicesVetState extends State<ServicesVet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CardItem> items = [
      IconTitleCardItem(
        selectedBgColor: AppColors.principal,
        text: "Alarm",
        iconData: Icons.access_alarms,
      ),
      IconTitleCardItem(
        selectedBgColor: AppColors.principal,
        text: "Add",
        iconData: Icons.add,
      ),
      IconTitleCardItem(
        selectedBgColor: AppColors.principal,
        text: "Call",
        iconData: Icons.add_call,
      ),
      IconTitleCardItem(
        selectedBgColor: AppColors.principal,
        text: "WiFi",
        iconData: Icons.wifi,
      ),
      IconTitleCardItem(
        selectedBgColor: AppColors.principal,
        text: "File",
        iconData: Icons.attach_file,
      ),
      IconTitleCardItem(
        selectedBgColor: AppColors.principal,
        text: "Air Play",
        iconData: Icons.airplay,
      ),
    ];

    return Scaffold(
        // backgroundColor: AppColors.opc,
        body: Center(
            child: HorizontalCardPager(
      // ignore: avoid_print
      onPageChanged: (page) => print("page : $page"),
      // ignore: avoid_print
      onSelectedItem: (page) => print("selected : $page"),
      items: items,
    )));
  }
}
