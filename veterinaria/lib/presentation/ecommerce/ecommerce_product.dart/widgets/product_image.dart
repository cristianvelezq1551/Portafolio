part of '../products_screen.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.44,
      width: double.infinity,
      color: AppColors.principal,
      child: Padding(
        padding: EdgeInsets.only(
            top: kToolbarHeight * 0.18,
            bottom: kToolbarHeight * 1,
            right: kToolbarHeight,
            left: kToolbarHeight),
        child: Container(
          child: Column(
            children: [
              Container(
                height: kToolbarHeight * 4,
                child: Image.network(
                    'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/kraken_generic_max_width_360/public/2021-09/PURINA-PROPLAN-SECCION-PERROS-ACTIVE-MIND_2_0.png?itok=1HtfBbWc'),
              ),
              SizedBox(height: kToolbarHeight * 0.35),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: kToolbarHeight,
                  width: size.width * 0.46,
                  color: AppColors.opc,
                  child: Container(
                    child: Row(
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColors.principal,
                            child: Icon(Icons.remove),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Container(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: kToolbarHeight * 0.5,
                                    color: AppColors.fondo2),
                              ),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: CircleAvatar(
                            backgroundColor: AppColors.principal,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
