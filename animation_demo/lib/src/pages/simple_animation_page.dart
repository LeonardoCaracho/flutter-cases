import 'package:flutter/material.dart';

class SimpleAnimationPage extends StatefulWidget {
  const SimpleAnimationPage({super.key});

  @override
  State<SimpleAnimationPage> createState() => _SimpleAnimationPageState();
}

class _SimpleAnimationPageState extends State<SimpleAnimationPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);

    controller.repeat();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple animation"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation.value,
          width: sizeAnimation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
