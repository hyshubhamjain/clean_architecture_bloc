import 'package:flutter/material.dart';
import 'package:jainebook/core/widget/widget.dart';
import 'package:jainebook/router/app_router.dart';
import 'package:jainebook/core/service_locator.dart';

import '../../forget_password/presentation/forget_password_screen.dart';
import '../../registratio/presentation/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  static const screenName = "/login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 16),
              Text(
                'Please login to your account',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 36),
              CustomTextField(
                labelText: 'Enter your Email id',
                hintText: 'Enter your email',
                prefixIcon: const Icon(Icons.email),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  final emailRegex = RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  );
                  if (!emailRegex.hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                labelText: 'Enter your password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock),
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters alphanumeric';
                  }
                  final passwordRegex = RegExp(
                    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
                  );
                  if (!passwordRegex.hasMatch(value)) {
                    return 'Password must be alphanumeric';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Handle login logic here
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account? ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      sLocator.get<AppRouter>().push(SignUpScreen());
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot your password? ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      sLocator.get<AppRouter>().push(ForgetPasswordScreen());
                    },
                    child: Text(
                      "Reset Password",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.none,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
