import 'package:flutter/material.dart';

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
}
