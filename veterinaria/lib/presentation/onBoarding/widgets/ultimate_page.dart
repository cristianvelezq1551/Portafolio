part of '../onBoarding_screen.dart';

class UltimateOnBoarding extends ConsumerWidget {
  const UltimateOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.opc),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 120),
              Row(children: [
                Text(
                  'Bienvenido a',
                  style: TextStyle(
                      fontFamily: 'kenyan coffe',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ]),
              Row(
                children: [
                  Text(
                    'Doctor.Vet  ',
                    style: TextStyle(
                        fontFamily: 'kenyan coffe',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fondo2),
                  ),
                  Image.asset(
                    'assets/bones.png',
                    height: kToolbarHeight * 0.8,
                    color: AppColors.fondo2,
                  )
                ],
              ),
              SizedBox(height: 80),
              GmailBut(),
              SizedBox(height: 20),
              FacebookButton(),
              SizedBox(height: 50),
              RegisterButton()
            ],
          ),
        ),
      ),
    );
  }
}

class GmailBut extends ConsumerWidget {
  const GmailBut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: MaterialButton(
        height: size.height * 0.07,
        onPressed: () {
          Navigator.pushNamed(context, 'InitialPage');
        },
        color: AppColors.principal,
        child: Center(
            child: Row(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  LineIcons.facebookF,
                  size: kToolbarHeight * 0.6,
                  color: AppColors.principal,
                )
                // Image.asset(
                //   'assets/facebook.png',
                //   height: kToolbarHeight * 0.6,
                //   color: AppColors.principal,
                // ),
                ),
          ),
          Text(
            'Continue con ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'Facebook',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ])),
      ),
    );
  }
}

class FacebookButton extends ConsumerWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: MaterialButton(
        height: size.height * 0.07,
        onPressed: () {
          Navigator.pushNamed(context, 'InitialPage');
        },
        color: AppColors.principal,
        child: Center(
            child: Row(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  LineIcons.googlePlusG,
                  size: kToolbarHeight * 0.6,
                  color: AppColors.principal,
                )
                // Image.asset(
                //   'assets/facebook.png',
                //   height: kToolbarHeight * 0.6,
                //   color: AppColors.principal,
                // ),
                ),
          ),
          Text(
            'Continue con ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'Gmail',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ])),
      ),
    );
  }
}

class RegisterButton extends ConsumerWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: MaterialButton(
        height: size.height * 0.07,
        onPressed: () {
          Navigator.pushNamed(context, 'RegisterScreen');
        },
        color: Colors.black,
        child: Center(
          child: Text(
            'Registrate con Email',
            style: TextStyle(
                color: AppColors.principal,
                fontSize: 21,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
