import 'package:flutter/material.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/presentation/splash/presentation/splash_screen.dart';

import 'router/app_router.dart';

class JainEBook extends StatelessWidget {
  const JainEBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: sLocator.get<AppRouter>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Jain E-Book',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
