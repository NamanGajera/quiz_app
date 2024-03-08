import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/const/colors.dart';

import '../../../common/my_button.dart';
import '../../../common/textField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final useremailController = TextEditingController();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  MyTextField(
                    controller: useremailController,
                    prefixIcon: const Icon(Icons.email),
                    hintText: 'User Email',
                  ),
                  const SizedBox(height: 15),
                  MyTextField(
                    controller: useremailController,
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'User Password',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 5),
              child: const Text(
                'Forgot password?',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 18),
            const MyButton(
              buttonName: 'Login',
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Signup',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
