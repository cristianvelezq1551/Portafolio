part of '../login_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.TextFieldDecoration(
                    hinText: 'example@exmaple.com',
                    labelText: 'Correo electrónico',
                    prefixIcon: Icons.alternate_email_sharp),
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'Formato de correo invalido';
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                obscureText: _obscureText,
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecorations.TextFieldDecoration(
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: AppColors.principal,
                      ),
                    ),
                    hinText: '*******',
                    labelText: 'Contraseña'),
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Mínimo 6 caracteres';
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'OnBoardingScreen');
                      },
                      child: Text('Restablecer contraseña',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.principal))),
                  Expanded(child: SizedBox()),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'RegisterScreen');
                      },
                      child: Text('Registrate',
                          style: TextStyle(
                              fontSize: 14, color: AppColors.principal))),
                ]),
              )
            ],
          )),
    );
  }
}
