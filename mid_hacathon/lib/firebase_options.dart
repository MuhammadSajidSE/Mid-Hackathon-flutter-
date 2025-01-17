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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAaUTptS_ELldTKBbPTlNy3VqCf1gfjp5k',
    appId: '1:469208507961:web:c5a7b04bd0891e67bb0fe8',
    messagingSenderId: '469208507961',
    projectId: 'myschooling-98ac7',
    authDomain: 'myschooling-98ac7.firebaseapp.com',
    databaseURL: 'https://myschooling-98ac7-default-rtdb.firebaseio.com',
    storageBucket: 'myschooling-98ac7.appspot.com',
    measurementId: 'G-EW9JEZJ1HL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPq2QuglBulzb0qV3C4IFpvSzCByDnhg8',
    appId: '1:469208507961:android:196ccadbf04d5d66bb0fe8',
    messagingSenderId: '469208507961',
    projectId: 'myschooling-98ac7',
    databaseURL: 'https://myschooling-98ac7-default-rtdb.firebaseio.com',
    storageBucket: 'myschooling-98ac7.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAaUTptS_ELldTKBbPTlNy3VqCf1gfjp5k',
    appId: '1:469208507961:web:d6468ca90f4539d1bb0fe8',
    messagingSenderId: '469208507961',
    projectId: 'myschooling-98ac7',
    authDomain: 'myschooling-98ac7.firebaseapp.com',
    databaseURL: 'https://myschooling-98ac7-default-rtdb.firebaseio.com',
    storageBucket: 'myschooling-98ac7.appspot.com',
    measurementId: 'G-L43B726SQF',
  );

}