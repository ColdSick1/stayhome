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
    apiKey: 'AIzaSyCYnspBITx5Pb7hom08v4UJ4eau44ecVIQ',
    appId: '1:665759671167:web:fcbb77ab78198ab923b04a',
    messagingSenderId: '665759671167',
    projectId: 'stayhometest-21ba2',
    authDomain: 'stayhometest-21ba2.firebaseapp.com',
    storageBucket: 'stayhometest-21ba2.appspot.com',
    measurementId: 'G-XHFC9BSKRS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkhtKTk9VIlEBl6_fSz0IxehnfUzubhak',
    appId: '1:665759671167:android:dcb256a85a9a919023b04a',
    messagingSenderId: '665759671167',
    projectId: 'stayhometest-21ba2',
    storageBucket: 'stayhometest-21ba2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCt6pUN15sDPfn5qU3ekWi0R58Hbz178LA',
    appId: '1:665759671167:ios:ddf4a172dc94127a23b04a',
    messagingSenderId: '665759671167',
    projectId: 'stayhometest-21ba2',
    storageBucket: 'stayhometest-21ba2.appspot.com',
    iosClientId: '665759671167-3u7joetdbdft9gbv7o215biv9li8aqmm.apps.googleusercontent.com',
    iosBundleId: 'com.example.stayhome',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCt6pUN15sDPfn5qU3ekWi0R58Hbz178LA',
    appId: '1:665759671167:ios:ddf4a172dc94127a23b04a',
    messagingSenderId: '665759671167',
    projectId: 'stayhometest-21ba2',
    storageBucket: 'stayhometest-21ba2.appspot.com',
    iosClientId: '665759671167-3u7joetdbdft9gbv7o215biv9li8aqmm.apps.googleusercontent.com',
    iosBundleId: 'com.example.stayhome',
  );
}
