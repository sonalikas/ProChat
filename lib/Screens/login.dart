import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/Screens/registration.dart';
import 'package:my_chat_app/auth/auth_service.dart';
import 'package:my_chat_app/components/Button.dart';
import 'package:my_chat_app/components/TextField.dart';

class LoginScreen extends StatelessWidget {
  final void Function()? onTap;

   LoginScreen({super.key, required this.onTap});

  final TextEditingController email_controller = TextEditingController();

  final TextEditingController password_controller = TextEditingController();

  void login(BuildContext context) async {
// auth service
  final authService = AuthService();

  // try login
    try{
      await authService.signInWithEmailPassword(email_controller.text, password_controller.text);
    }
    //catch any error
    catch(e){
      showDialog(context: context, builder: (context) => AlertDialog(title: Text(e.toString())),);
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ///logo
          Icon(Icons.message,
              size: 60, color: Theme.of(context).colorScheme.primary),
          ///welcomeback messsage
          const SizedBox(
            height: 50,
          ),
          Text(
            "Welcome back, you have been missed",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
            fontSize: 16),
          ),
          ///email field  mind
          SizedBox(height: 25,),
            MyTextField(text: "Email",obscure: false,controller: email_controller, ),
          //password field
          SizedBox(height: 25,),
          MyTextField(text: "password", obscure: true, controller: password_controller ),
          // subbmit Button
          SizedBox(height: 25,),
          MyButtons(txt: "Login" ,tab: ()=> login(context),),
          //not account msg
          SizedBox(height: 25,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member? ",  style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16)),
              GestureDetector( onTap: onTap,
                child: Text("Register now ", style: TextStyle(fontWeight: FontWeight.bold,  color: Theme.of(context).colorScheme.primary,
                    fontSize: 16),),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
