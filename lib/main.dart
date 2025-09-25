import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_test/core/router/router.dart';
import 'package:solid_test/core/theme/app_theme.dart';
import 'package:solid_test/features/block_screen/bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: MaterialApp.router(
        theme: CustomTheme.theme, 
        routerConfig: AppRouter().router, 
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
