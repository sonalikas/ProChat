import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String txt;
  final void Function()? tab;

  const MyButtons({super.key, required this.txt, this.tab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tab,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(child: Text(txt)))),
    );
  }
}

//} return
// Container(
// decoration : BoxDecoration(
// color : Thene.of(context).colorSchene.secondary,
// borderRadius : BorderRadius.circular (8), ),
// BoxDecoration padding : const EdgeInsets.all(25),
// margin : const EdgeInsets.symmetric (horizontal : 25),
// child : Center child : Text("Button").
// 1 // Center ); // Container
