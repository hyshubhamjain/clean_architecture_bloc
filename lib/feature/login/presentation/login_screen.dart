import 'package:flutter/material.dart';
import 'package:jainebook/core/widget/widget.dart';
import 'package:jainebook/router/app_router.dart';
import 'package:jainebook/core/service_locator.dart';

import '../../forget_password/presentation/forget_password_screen.dart';
import '../../registratio/presentation/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  static const screenName = "/login";

  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            SizedBox(height: 16),
            CustomTextField(
              labelText: 'Enter your Email id',
              hintText: 'Enter your email',
              prefixIcon: const Icon(Icons.email),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
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
            CustomButton(
              onPressed: () {
                // Handle login logic here
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
                    // Navigate to Sign Up screen
                    // Navigator.pushNamed(context, '/signup');
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
                    // Navigate to Sign Up screen
                    // Navigator.pushNamed(context, '/signup');
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
    );
  }
}
