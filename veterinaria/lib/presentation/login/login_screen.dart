import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/login/login_controller.dart';
import 'package:veterinaria/presentation/widgets/buttons/icon_button.dart';
import 'package:veterinaria/presentation/widgets/buttons/input_decoration.dart';

part 'widgets/background_login.dart';
part 'widgets/card_login.dart';
part 'widgets/login_textfield.dart';
part 'widgets/log_button.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _LoginBackground(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CardLogin(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'OnBoardingScreen');
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(width: 40),
                      Text('Ingreso',
                          style: Theme.of(context).textTheme.headline4),
                    ],
                  ),
                  SizedBox(height: 20),
                  LoginForm(),
                  LoginButton()
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class _LoginBackground extends ConsumerWidget {
  final Widget child;

  const _LoginBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(255, 212, 212, 212),
      child: Stack(
          children: [BackgroundColor(), HeaderIcon(size: size), this.child]),
    );
  }
}
