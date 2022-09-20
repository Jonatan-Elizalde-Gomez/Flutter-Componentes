import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _with = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChangeShape() {
    final random = Random();
    _with = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(300).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.bounceOut,
          width: _with,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          duration: const Duration(milliseconds: 400),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline,
          size: 40,
        ),
        onPressed: () {
          onChangeShape();
        },
      ),
    );
  }
}
