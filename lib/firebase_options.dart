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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPucgOFURdaA8lLmldF7U-88Vi_W0oEXY',
    appId: '1:962898936245:android:8149969ec0e2c8bec5d9fc',
    messagingSenderId: '962898936245',
    projectId: 'flutter-docdoc-76dba',
    storageBucket: 'flutter-docdoc-76dba.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnnmWemFZxtf16gp27Jg3YJiPw47rLN28',
    appId: '1:962898936245:ios:2ef9793c03cfa108c5d9fc',
    messagingSenderId: '962898936245',
    projectId: 'flutter-docdoc-76dba',
    storageBucket: 'flutter-docdoc-76dba.firebasestorage.app',
    iosBundleId: 'com.example.flutterAdv',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCS01gixX6Z-caN8CvImcJ-CMcnMEIzqyQ',
    appId: '1:962898936245:web:cf20c4919dc70301c5d9fc',
    messagingSenderId: '962898936245',
    projectId: 'flutter-docdoc-76dba',
    authDomain: 'flutter-docdoc-76dba.firebaseapp.com',
    storageBucket: 'flutter-docdoc-76dba.firebasestorage.app',
    measurementId: 'G-GEKJEFMBCS',
  );
}
