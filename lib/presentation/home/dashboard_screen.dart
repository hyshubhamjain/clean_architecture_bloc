import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jainebook/presentation/home/bloc/dashboard_bloc.dart';
import 'package:jainebook/presentation/login/login_screen.dart';

import '../../core/service_locator.dart';
import '../../router/app_router.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  static const String screenName = 'DashboardScreen';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardBloc, DashboardState>(
      listener: (context, state) {
        state.maybeWhen(
          loggedOut: () {
            sLocator.get<AppRouter>()
              ..pop()
              ..pushNamed(LoginScreen.screenName);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            InkWell(
              child: Icon(Icons.logout),
              onTap: () {
                context.read<DashboardBloc>().add(DashboardEvent.logout());
              },
            ),
          ],
        ),
        body: const Center(child: Text('Welcome to the Dashboard!')),
      ),
    );
  }
}
