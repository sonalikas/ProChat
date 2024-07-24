import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/firebase_options.dart';
import 'package:my_chat_app/themes/light_mode.dart';
import 'auth/login_or_register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightmode,

    );
  }
}

//Platform  Firebase App Id
// web       1:509509853154:web:54ac0688f860a6378ee3bb
// android   1:509509853154:android:71ceef481ea938198ee3bb
// ios       1:509509853154:ios:2c8c910d983a0f3b8ee3bb
// macos     1:509509853154:ios:d2338df52f5af71f8ee3bb