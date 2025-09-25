import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solid_test/core/router/route_constants.dart';
import 'package:solid_test/features/block_screen/block_screen.dart';
import 'package:solid_test/features/simple_screen/simple_screen.dart';

class AppRouter {
  GoRouter get router => _router();
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  GoRouter _router() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: [
        GoRoute(path: '/', name: RouteConstants.screenSimple, builder: (context, state) => const SimpleScreen()),
        GoRoute(path: '/block', name: RouteConstants.screenBlock, builder: (context, state) => const BlockScreen()),
      ],
    );
  }
}
