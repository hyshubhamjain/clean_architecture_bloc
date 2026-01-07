import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/presentation/home/bloc/dashboard_bloc.dart';
import 'package:jainebook/presentation/home/dashboard_screen.dart';
import 'package:jainebook/presentation/login/bloc/login_bloc.dart';
import 'package:jainebook/presentation/login/login_screen.dart';
import 'package:jainebook/presentation/registration/bloc/registration_bloc.dart';
import 'package:jainebook/presentation/registration/sign_up_screen.dart';
import 'package:jainebook/presentation/splash/bloc/splash_bloc.dart';
import 'package:jainebook/presentation/splash/splash_screen.dart';

import '../presentation/forget_password/bloc/forget_password_bloc.dart';
import '../presentation/forget_password/forget_password_screen.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get navigator => navigatorKey.currentState;

  void pop<T>([T? result]) {
    navigator?.pop(result);
  }

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return navigator!.pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> push<T>(Widget page) {
    return navigator!.push<T>(MaterialPageRoute(builder: (_) => page));
  }

  Future<T?> pushReplacement<T>(Widget page) {
    return navigator!.pushReplacement<T, T>(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  Future<T?> pushNamedAndRemoveUntil<T>(Widget page) {
    return navigator!.pushAndRemoveUntil<T>(
      MaterialPageRoute(builder: (_) => page),
      (route) => false,
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    // Define your route generation logic here
    // Example:
    switch (settings.name) {
      case LoginScreen.screenName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sLocator.get<LoginBloc>(),
            child: LoginScreen(),
          ),
        );
      case SignUpScreen.screenName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sLocator.get<RegistrationBloc>(),
            child: SignUpScreen(),
          ),
        );
      case ForgetPasswordScreen.screenName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sLocator.get<ForgetPasswordBloc>(),
            child: ForgetPasswordScreen(),
          ),
        );
      case DashboardScreen.screenName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sLocator.get<DashboardBloc>(),
            child: DashboardScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                sLocator.get<SplashBloc>()
                  ..add(SplashEvent.checkAuthentication()),
            child: SplashScreen(),
          ),
        );
    }
  }
}
