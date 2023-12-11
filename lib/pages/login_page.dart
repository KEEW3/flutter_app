import 'package:flutter/material.dart';
import 'package:flutter_app/components/button_login_style.dart';
import 'package:flutter_app/components/text_field_login_style.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  //text edit controller 
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn (){}

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 50
              ),
            const Icon(
              Icons.lock,size: 100,
              ),
            const SizedBox(
              height: 50
              ),
            Text(
              'Welcome back',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16)
              ),
            const SizedBox(
              height: 25
              ),
            TextFieldLoginStyle(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFieldLoginStyle(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            ButtonLoginStyle(buttonText: 'Sing In', onTap: signUserIn)
          ]),
        ),
      ),
    );
  }
}