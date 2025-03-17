import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:siaksi_dosen/LOGIN/login.dart';
import 'package:siaksi_dosen/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),

      routes: {
  '/login': (context) => Login(), // Sesuaikan dengan halaman login Anda
},

    );
  }
}

