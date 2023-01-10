import 'package:flutter/material.dart';

class BouncingButtonPage extends StatefulWidget {
  const BouncingButtonPage({super.key});

  @override
  State<BouncingButtonPage> createState() => _BouncingButtonPageState();
}

class _BouncingButtonPageState extends State<BouncingButtonPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Button'),
      ),
      body: Center(
        child: GestureDetector(
          onTapDown: _tapDown,
          onTapUp: _tapUp,
          child: Transform.scale(
            scale: _scale,
            child: _animatedButton(),
          ),
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  Widget _animatedButton() {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff33ccff),
              Color(0xffff99cc),
            ],
          )),
      child: const Center(
        child: Text(
          'Press',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
