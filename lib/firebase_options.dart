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
    apiKey: 'AIzaSyBB83WIxYqtKNpzB4rPctQj6J8bI1QUu6E',
    appId: '1:220166922430:web:ee80e866ac6bf1c8803eef',
    messagingSenderId: '220166922430',
    projectId: 'pro-academy-067',
    authDomain: 'pro-academy-067.firebaseapp.com',
    storageBucket: 'pro-academy-067.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCblxySjH61QgajhQQUqKJfyIlvAfMsvHw',
    appId: '1:220166922430:android:72535050ea1c4ab9803eef',
    messagingSenderId: '220166922430',
    projectId: 'pro-academy-067',
    storageBucket: 'pro-academy-067.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfpdv-YatxSoqoDkqy05-C0bH5gv4Rb30',
    appId: '1:220166922430:ios:18f82436a028f2a3803eef',
    messagingSenderId: '220166922430',
    projectId: 'pro-academy-067',
    storageBucket: 'pro-academy-067.appspot.com',
    iosClientId: '220166922430-o87ldddkonvg218klsop90pn45e628ro.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfpdv-YatxSoqoDkqy05-C0bH5gv4Rb30',
    appId: '1:220166922430:ios:18f82436a028f2a3803eef',
    messagingSenderId: '220166922430',
    projectId: 'pro-academy-067',
    storageBucket: 'pro-academy-067.appspot.com',
    iosClientId: '220166922430-o87ldddkonvg218klsop90pn45e628ro.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProject',
  );
}
