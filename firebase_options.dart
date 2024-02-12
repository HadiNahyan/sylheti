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
    apiKey: 'AIzaSyCBHUD-CtSWhHDCNQrw95mHBECC3BsGT1E',
    appId: '1:92874919552:web:2b822e6772e4e7a1d0a065',
    messagingSenderId: '92874919552',
    projectId: 'sylhety-63e6a',
    authDomain: 'sylhety-63e6a.firebaseapp.com',
    storageBucket: 'sylhety-63e6a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZIN7FWvNLfO6fACTY8xsvesKxP0Cbpqg',
    appId: '1:92874919552:android:6b1f6edd0bc035d5d0a065',
    messagingSenderId: '92874919552',
    projectId: 'sylhety-63e6a',
    storageBucket: 'sylhety-63e6a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2ivzDqUlkRHcUTeTa08dYH8tP0D-vC_c',
    appId: '1:92874919552:ios:fb46117fb26dbe7cd0a065',
    messagingSenderId: '92874919552',
    projectId: 'sylhety-63e6a',
    storageBucket: 'sylhety-63e6a.appspot.com',
    iosBundleId: 'hunahyan.com.sylhety',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2ivzDqUlkRHcUTeTa08dYH8tP0D-vC_c',
    appId: '1:92874919552:ios:b8b407cea88b7829d0a065',
    messagingSenderId: '92874919552',
    projectId: 'sylhety-63e6a',
    storageBucket: 'sylhety-63e6a.appspot.com',
    iosBundleId: 'hunahyan.com.sylhety.RunnerTests',
  );
}
