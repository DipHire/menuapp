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
    apiKey: 'AIzaSyAeq2hedTvQDoGsj4Qc1YEfdAdpaHQU81k',
    appId: '1:148693721078:web:1bcd2b8b09defb2dfa31d7',
    messagingSenderId: '148693721078',
    projectId: 'menuapp-867ff',
    authDomain: 'menuapp-867ff.firebaseapp.com',
    storageBucket: 'menuapp-867ff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAYHaGvQGe2SZ17CNYb3EjZuzVBCq2l_w',
    appId: '1:148693721078:android:bf0eccc12084e386fa31d7',
    messagingSenderId: '148693721078',
    projectId: 'menuapp-867ff',
    storageBucket: 'menuapp-867ff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB10_dWUNj-z6wHvpbtrR5hVRxdCRFTuG8',
    appId: '1:148693721078:ios:18ff1f6c8bdd3f18fa31d7',
    messagingSenderId: '148693721078',
    projectId: 'menuapp-867ff',
    storageBucket: 'menuapp-867ff.appspot.com',
    iosClientId: '148693721078-o0k213j5r4k6hg5tf1lf8l4a9nljoihq.apps.googleusercontent.com',
    iosBundleId: 'com.example.menuapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB10_dWUNj-z6wHvpbtrR5hVRxdCRFTuG8',
    appId: '1:148693721078:ios:18ff1f6c8bdd3f18fa31d7',
    messagingSenderId: '148693721078',
    projectId: 'menuapp-867ff',
    storageBucket: 'menuapp-867ff.appspot.com',
    iosClientId: '148693721078-o0k213j5r4k6hg5tf1lf8l4a9nljoihq.apps.googleusercontent.com',
    iosBundleId: 'com.example.menuapp',
  );
}
