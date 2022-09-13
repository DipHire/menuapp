import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controlphoneno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            //logo

            Container(
              height: 200,
              width: 200,
              child: const Center(
                child: Text(
                  'Image here',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //registration
            const Text(
              'Registration',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            //input text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Phone no',
                ),
              ),
            ),
            //button
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
            )
          ],
        )),
      ),
    );
  }
}
