import 'package:flutter/material.dart';
import 'package:jainebook/core/widget/widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Forget Password')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Forgot your password?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Please enter your email to reset your password',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Enter your Email id',
              hintText: 'Enter your email',
              prefixIcon: const Icon(Icons.email),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            CustomButton(
              onPressed: () {
                // Handle forget password logic here
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
