// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD6_Rpzw9B9LFTn18KcR0IT1PtMpl0wUz8',
    appId: '1:509509853154:web:54ac0688f860a6378ee3bb',
    messagingSenderId: '509509853154',
    projectId: 'prochat-be8e7',
    authDomain: 'prochat-be8e7.firebaseapp.com',
    storageBucket: 'prochat-be8e7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALD0t4YEt1S8_GRnFJ6RRl63LAVLPDhTw',
    appId: '1:509509853154:android:71ceef481ea938198ee3bb',
    messagingSenderId: '509509853154',
    projectId: 'prochat-be8e7',
    storageBucket: 'prochat-be8e7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA3OpN_OOVwt9fmDXaWzPFkvyJEsGzC4gA',
    appId: '1:509509853154:ios:2c8c910d983a0f3b8ee3bb',
    messagingSenderId: '509509853154',
    projectId: 'prochat-be8e7',
    storageBucket: 'prochat-be8e7.appspot.com',
    iosBundleId: 'com.example.myChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA3OpN_OOVwt9fmDXaWzPFkvyJEsGzC4gA',
    appId: '1:509509853154:ios:d2338df52f5af71f8ee3bb',
    messagingSenderId: '509509853154',
    projectId: 'prochat-be8e7',
    storageBucket: 'prochat-be8e7.appspot.com',
    iosBundleId: 'com.example.myChatApp.RunnerTests',
  );
}
