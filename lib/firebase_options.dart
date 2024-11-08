// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDezFyX9jUXhWtzBbRpJh27ITwR_F-q-Og',
    appId: '1:502227256729:web:21f8d7e08770bc4d9bff08',
    messagingSenderId: '502227256729',
    projectId: 'servicos-fb71e',
    authDomain: 'servicos-fb71e.firebaseapp.com',
    storageBucket: 'servicos-fb71e.appspot.com',
    measurementId: 'G-8J3BHMN3X8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSKmXgT6tttL3LP3d_FNeNeOEWHOpyuA0',
    appId: '1:502227256729:android:60eddbc6ed8a8e949bff08',
    messagingSenderId: '502227256729',
    projectId: 'servicos-fb71e',
    storageBucket: 'servicos-fb71e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbJ9Io_6PxFOFB0zwlDIiI6Y5seDJ1-nk',
    appId: '1:502227256729:ios:51d9ec294a855c909bff08',
    messagingSenderId: '502227256729',
    projectId: 'servicos-fb71e',
    storageBucket: 'servicos-fb71e.appspot.com',
    iosBundleId: 'com.github.hendrilmendes.servicos',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbJ9Io_6PxFOFB0zwlDIiI6Y5seDJ1-nk',
    appId: '1:502227256729:ios:51d9ec294a855c909bff08',
    messagingSenderId: '502227256729',
    projectId: 'servicos-fb71e',
    storageBucket: 'servicos-fb71e.appspot.com',
    iosBundleId: 'com.github.hendrilmendes.servicos',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDezFyX9jUXhWtzBbRpJh27ITwR_F-q-Og',
    appId: '1:502227256729:web:1008a499c84ea0bf9bff08',
    messagingSenderId: '502227256729',
    projectId: 'servicos-fb71e',
    authDomain: 'servicos-fb71e.firebaseapp.com',
    storageBucket: 'servicos-fb71e.appspot.com',
    measurementId: 'G-QLE40CPSCQ',
  );
}
