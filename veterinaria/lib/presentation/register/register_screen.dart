import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veterinaria/domain/helper/resources.dart';
import 'package:veterinaria/presentation/widgets/buttons/input_decoration.dart';

part 'widgets/background_register.dart';
part 'widgets/card_register.dart';
part 'widgets/reg_textfield.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _RegisterBackground(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CardRegister(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'LoginScreen');
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(width: 30),
                      Text('Registro',
                          style: Theme.of(context).textTheme.headline4),
                    ],
                  ),
                  SizedBox(height: 20),
                  RegisterForm(),
                  SizedBox(height: 50),
                  RegButton()
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class _RegisterBackground extends ConsumerWidget {
  final Widget child;

  const _RegisterBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(255, 212, 212, 212),
      child: Stack(
          children: [BackgroundColorReg(), HeaderIcon(size: size), this.child]),
    );
  }
}

class RegButton extends ConsumerWidget {
  const RegButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: MaterialButton(
        height: size.height * 0.06,
        onPressed: () {
          Navigator.pushNamed(context, 'TestingScreen');
        },
        color: AppColors.principal,
        child: Center(
            child: Text(
          'Registrarme',
          style: TextStyle(color: Colors.white, fontSize: 23),
        )),
      ),
    );
  }
}
