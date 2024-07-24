import 'package:flutter/cupertino.dart';
import 'package:my_chat_app/Screens/login.dart';
import 'package:my_chat_app/Screens/registration.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  ///initially show login page
  bool showLoginPage = true;

  ///toggle between login an register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        onTap: togglePages,
      );
    } else {
      return RegisterScreen(
        onTab: togglePages,
      );
    }
  }
}
