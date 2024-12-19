import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RepaintBoundary Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredBoxText(
              text: 'Brown container',
              color: Colors.brown,
            ),
            RepaintBoundary(child: AnimatedLoader()),
            ColoredBoxText(
              text: 'Red accent container',
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredBoxText extends StatelessWidget {
  const ColoredBoxText({
    required this.text,
    required this.color,
    super.key,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 100,
        child: ColoredBox(
          color: color,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      );
}

class AnimatedLoader extends StatefulWidget {
  const AnimatedLoader({super.key});

  @override
  State<AnimatedLoader> createState() => _AnimatedLoaderState();
}

class _AnimatedLoaderState extends State<AnimatedLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animationController,
      child: const Icon(
        Icons.refresh,
        size: 50,
        color: Colors.orange,
      ),
    );
  }
}
