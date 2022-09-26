import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/feature.dart';

class RouteName {
  static const String onboarding = 'onboarding';
  static const String home = 'home';
}

class RoutePath {
  static const String onboarding = '/';
  static const String home = '/home';
}

CustomTransitionPage<void> buildPageWithCustomTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: Tween(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation),
      child: child,
    ),
  );
}

GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    GoRoute(
      name: RouteName.onboarding,
      path: RoutePath.onboarding,
      pageBuilder: (context, state) => buildPageWithCustomTransition(
        context: context,
        state: state,
        child: const OnboardingPage(),
      ),
    ),
    GoRoute(
      name: RouteName.home,
      path: RoutePath.home,
      pageBuilder: (context, state) => buildPageWithCustomTransition(
        context: context,
        state: state,
        child: const MainPage(),
      ),
    ),
  ],
);
