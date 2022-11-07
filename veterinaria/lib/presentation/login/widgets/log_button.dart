part of '../login_screen.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      SizedBox(height: 30),
      _buttonLog1(),
      SizedBox(height: 55),
      Center(
          child: Text(
        'o ingresa con',
        style: TextStyle(
            color: Color.fromARGB(255, 127, 127, 127),
            fontWeight: FontWeight.w500),
      )),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [GmailButton(), SizedBox(width: 40), FacebookButton()],
      ),
    ]);
  }
}

class _buttonLog1 extends ConsumerWidget {
  const _buttonLog1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: MaterialButton(
        height: size.height * 0.06,
        onPressed: () {
          Navigator.pushNamed(context, 'InitialPage');
        },
        color: AppColors.principal,
        child: Center(
            child: Text(
          'Ingresar',
          style: TextStyle(color: Colors.white, fontSize: 23),
        )),
      ),
    );
  }
}

class GmailButton extends ConsumerWidget {
  const GmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Container(
        height: 60,
        width: 60,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, 'InitialPage');
          },
          color: AppColors.principal,
          child: Center(child: Image.asset('assets/gmail.png')),
        ),
      ),
    );
  }
}

class FacebookButton extends ConsumerWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Container(
        height: 60,
        width: 60,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, 'InitialPage');
          },
          color: AppColors.principal,
          child: Center(
            child: Image.asset('assets/facebook.png',
                color: Colors.white, height: 35),
          ),
        ),
      ),
    );
  }
}
