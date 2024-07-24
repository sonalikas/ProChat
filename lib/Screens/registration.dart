import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/Screens/login.dart';

import '../components/Button.dart';
import '../components/TextField.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTab;
  RegisterScreen({super.key, required this.onTab});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController cnf_password =  TextEditingController();

  @override

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
            "Let's create an account for you",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16),
          ),
          ///email field  mind
          SizedBox(height: 10,),
          MyTextField(text: "Email",obscure: false,controller: email, ),
          //password field
          SizedBox(height: 10,),
          MyTextField(text: "password", obscure: true, controller: password ),
          //cnfrm pass
          SizedBox(height: 10,),
          MyTextField(text: "Confirm password", obscure: true, controller: cnf_password ),
          // subbmit Button
          SizedBox(height: 25,),
          MyButtons(txt: "Register" ,tab: () {

          },),
          //not account msg
          SizedBox(height: 25,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("already a member? ",  style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16)),
              GestureDetector(onTap: widget.onTab,
                child: Text("Login now ", style: TextStyle(fontWeight: FontWeight.bold,  color: Theme.of(context).colorScheme.primary,
                    fontSize: 16),),
              )
            ],
          ),
          //not account msg
        ]),
      ),
    );
  }
}
