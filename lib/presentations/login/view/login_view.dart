import 'package:flutter/material.dart';
import 'package:flutter_biolerplate/app/helper/constant/sized_box.dart';
import 'package:flutter_biolerplate/app/widgets/custom_app_bar.dart';
import 'package:flutter_biolerplate/app/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Login'),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            CustomTextField(
              controller: TextEditingController(),
              hint: 'Username',
            ),
            gapH16,
            CustomTextField(
              controller: TextEditingController(),
              hint: 'password',
            ),
            gapH16,
            ElevatedButton(
              child: const Text('Login'),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
