import 'package:flutter/material.dart';
import 'package:menuapp/pages/homepage.dart';

import 'pages/hotel_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
