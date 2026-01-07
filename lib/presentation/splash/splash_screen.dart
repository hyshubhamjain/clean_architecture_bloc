import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jainebook/presentation/home/dashboard_screen.dart';
import 'package:jainebook/presentation/login/login_screen.dart';

import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authenticated: () {
            Navigator.of(
              context,
            ).pushReplacementNamed(DashboardScreen.screenName);
          },
          unauthenticated: () {
            Navigator.of(context).pushReplacementNamed(LoginScreen.screenName);
          },
        );
      },
      child: Scaffold(
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
      ),
    );
  }
}
