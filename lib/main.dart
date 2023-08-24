import 'package:cryptotrack/bloc/crypto_bloc.dart';
import 'package:cryptotrack/pages/home_screen.dart';
import 'package:cryptotrack/pages/splash_screen.dart';
import 'package:cryptotrack/repositories/crypto_repository.dart';
import 'package:cryptotrack/utils/theme.dart';
import 'package:cryptotrack/widgets/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen(key: Key('splash')),
          routes: [
            GoRoute(
                path: 'home',
                builder: (context, state) => const HomeScreen(key: Key('home')))
          ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CryptoListBloc>(
          create: (BuildContext context) => CryptoListBloc(CryptoRepository()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Cryptocurrency Price Tracking',
        theme: buildTheme(Brightness.dark),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        scaffoldMessengerKey: scaffoldMessengerKey,
      ),
    );
  }
}
