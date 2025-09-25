import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solid_test/core/router/route_constants.dart';
import 'package:solid_test/features/block_screen/bloc/color_bloc.dart';

class BlockScreen extends StatelessWidget {
  const BlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<ColorBloc>().add(ChangeColorEvent()),
          child: Scaffold(
            backgroundColor: state.color,
            body: Center(
              child: Column(
                spacing: 100,
                children: [
                  const Spacer(),
                  Text("This screen has color state management based on BLoC", style: Theme.of(context).textTheme.bodySmall),
                  Text("Hello there", style: Theme.of(context).textTheme.headlineMedium),
                  ElevatedButton(onPressed: () => context.goNamed(RouteConstants.screenSimple), child: const Text("Go to simple screen")),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
