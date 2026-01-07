import 'package:flutter/material.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/presentation/login/presentation/login_screen.dart';

import '../../../router/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate some initialization work
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after the splash screen
      sLocator.get<AppRouter>().pushReplacement(LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
