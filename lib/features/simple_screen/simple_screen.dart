import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solid_test/core/methods/color_generator.dart';
import 'package:solid_test/core/router/route_constants.dart';

class SimpleScreen extends StatefulWidget {
  const SimpleScreen({super.key});

  @override
  State<SimpleScreen> createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  late Color backgroundColor;
  final ColorGenerator colorGenerator = ColorGenerator();

  @override
  void initState() {
    backgroundColor = colorGenerator.getRandomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        backgroundColor = colorGenerator.getRandomColor();
      }),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            spacing: 100,
            children: [
              const Spacer(),
              Text("Hello there", style: Theme.of(context).textTheme.headlineMedium),
              ElevatedButton(onPressed: () => context.goNamed(RouteConstants.screenBlock), child: const Text("Go to screen with block")),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
