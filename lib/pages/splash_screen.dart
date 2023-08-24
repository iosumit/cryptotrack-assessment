import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2200), () {
      GoRouter.of(context).pushReplacement('/home');
    });
    return const Scaffold(
      body: Center(
        child: Text("CRYPTO"),
      ),
    );
  }
}
