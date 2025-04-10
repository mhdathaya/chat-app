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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLFHbtAIrO5dhM4nkO_yZa7KgESgmlXAw',
    appId: '1:329937105692:android:1e5aa6834a2dac793580d9',
    messagingSenderId: '329937105692',
    projectId: 'project-siaksi',
    storageBucket: 'project-siaksi.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxsbEASLvMXYQbk8L7XIw_ByxA7IhGRUg',
    appId: '1:329937105692:ios:52d13d116633a13e3580d9',
    messagingSenderId: '329937105692',
    projectId: 'project-siaksi',
    storageBucket: 'project-siaksi.firebasestorage.app',
    androidClientId: '329937105692-n1gmed3get9cbe1mbep7rb0j1n4qemou.apps.googleusercontent.com',
    iosClientId: '329937105692-3tli7n188mcmg8l0t4sp2lme6me7a8k9.apps.googleusercontent.com',
    iosBundleId: 'com.example.siaksiDosen',
  );
}
