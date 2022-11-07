part of '../register_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                obscureText: true,
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecorations.TextFieldDecoration(
                    prefixIcon: Icons.person_outline,
                    hinText: 'Ana',
                    labelText: 'Nombre'),
                validator: (value) {
                  return (value != null && value.length >= 3)
                      ? null
                      : 'Mínimo 3 caracteres';
                },
              ),
              // SizedBox(height: 15),
              // TextFormField(
              //   obscureText: true,
              //   autocorrect: false,
              //   keyboardType: TextInputType.visiblePassword,
              //   decoration: InputDecorations.TextFieldDecoration(
              //       prefixIcon: Icons.lock_outline,
              //       hinText: '300 324 ** **',
              //       labelText: 'Telefono'),
              //   validator: (value) {
              //     return (value != null && value.length >= 10)
              //         ? null
              //         : 'Mínimo 10 caracteres';
              //   },
              // ),
              SizedBox(height: 15),
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
              SizedBox(height: 15),
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
              SizedBox(height: 15),
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
                    labelText: ' Validación contraseña'),
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Mínimo 6 caracteres';
                },
              ),
            ],
          )),
    );
  }
}
