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
    apiKey: 'AIzaSyCEVDFGaFAiRp3J8RZwx7qmLp3iBDHgo8A',
    appId: '1:449171302107:web:b63aac985bb553befa4efe',
    messagingSenderId: '449171302107',
    projectId: 'ecoworld-43df2',
    authDomain: 'ecoworld-43df2.firebaseapp.com',
    storageBucket: 'ecoworld-43df2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgWhholoftUh75BZSlUyZLCK8d33dPdvw',
    appId: '1:449171302107:android:d5778f2b73375e90fa4efe',
    messagingSenderId: '449171302107',
    projectId: 'ecoworld-43df2',
    storageBucket: 'ecoworld-43df2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdkYfVfub2Rw7vg02XKr1hT88phFJke04',
    appId: '1:449171302107:ios:1965311463c86e88fa4efe',
    messagingSenderId: '449171302107',
    projectId: 'ecoworld-43df2',
    storageBucket: 'ecoworld-43df2.appspot.com',
    iosClientId: '449171302107-l39bj5ir8c9o5ccbq33fvgqqg3rr56g4.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecoworld',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDdkYfVfub2Rw7vg02XKr1hT88phFJke04',
    appId: '1:449171302107:ios:1965311463c86e88fa4efe',
    messagingSenderId: '449171302107',
    projectId: 'ecoworld-43df2',
    storageBucket: 'ecoworld-43df2.appspot.com',
    iosClientId: '449171302107-l39bj5ir8c9o5ccbq33fvgqqg3rr56g4.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecoworld',
  );
}
