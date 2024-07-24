import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({super.key, required this.text, required this.obscure, required this.controller});
  final String text;
  final bool obscure;
  final TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25),
      child: TextField(controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary)
          ),
      focusedBorder:  OutlineInputBorder(
      borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary)
      ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: text,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
        ),
      ),
    );
  }
}
