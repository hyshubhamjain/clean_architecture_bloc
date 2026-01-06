import 'package:flutter/material.dart';
import 'package:jainebook/core/widget/widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneNumberController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Create your account',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          CustomTextField(
            labelText: 'Enter your Email id',
            hintText: 'Enter your email',
            prefixIcon: const Icon(Icons.email),
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 10),
          CustomTextField(
            labelText: 'Enter your name',
            hintText: 'Enter your name',
            prefixIcon: const Icon(Icons.person),
            controller: nameController,
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 10),
          CustomTextField(
            labelText: 'Enter your phone number',
            hintText: 'Enter your phone number',
            prefixIcon: const Icon(Icons.phone),
            controller: phoneNumberController,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 10),
          CustomTextField(
            labelText: 'Enter your password',
            hintText: 'Enter your password',
            prefixIcon: const Icon(Icons.lock),
            controller: passwordController,
            obscureText: true,
          ),

          SizedBox(height: 10),

          CustomTextField(
            labelText: 'Enter Confirm password',
            hintText: 'Enter Confirm password',
            prefixIcon: const Icon(Icons.lock),
            controller: confirmPasswordController,
            obscureText: true,
          ),

          SizedBox(height: 10),

          CustomButton(
            onPressed: () {
              // Handle login logic here
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
