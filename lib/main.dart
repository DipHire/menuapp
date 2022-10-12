import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:menuapp/pages/homepage.dart';
import 'package:menuapp/pages/loginpage.dart';
import 'package:menuapp/pages/signup_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignUp(),
      routes: {
        "/homepage": (context) => const HomePage(),
      },
    );
  }
}
