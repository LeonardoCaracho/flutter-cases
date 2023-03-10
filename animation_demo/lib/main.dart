import 'package:animation_demo/src/routes/routes.gr.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
