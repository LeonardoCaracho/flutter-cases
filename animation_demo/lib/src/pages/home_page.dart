import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.router.pushNamed('/simple-animation-page'),
              child: const Text('Simple Animation'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => context.router.pushNamed('/bouncing-button-page'),
              child: const Text('Bouncing Button'),
            )
          ],
        ),
      ),
    );
  }
}
