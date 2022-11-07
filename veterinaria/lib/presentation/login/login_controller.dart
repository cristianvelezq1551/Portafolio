import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginController extends StateNotifier<bool> {
  LoginController() : super(false);

  void obscureText() {
    state = !state;
  }
}

final LoginControllerProvider =
    StateNotifierProvider.autoDispose((ref) => LoginController());
