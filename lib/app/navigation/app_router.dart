import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_smart_course/features/home/presentation/pages/home_page.dart';
import 'package:flutter_smart_course/features/recommended/presentation/pages/recommended_page.dart';
import 'package:flutter_smart_course/app/shell_scaffold.dart';
import 'navigation_keys.dart';

final goRouterProvider = GoRouter(
  initialLocation: '/home',
  navigatorKey: rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: shellNavigatorKey,
      builder: (context, state, child) {
        return ShellScaffold(state: state, child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => const NoTransitionPage(child: HomePage()),
        ),
        GoRoute(
          path: '/recommended',
          pageBuilder: (context, state) => const NoTransitionPage(child: RecommendedPage()),
        ),
        GoRoute(
          path: '/courses', 
          pageBuilder: (context, state) => const NoTransitionPage(child: Center(child: Text('Courses Page'))),
        ),
        GoRoute(
          path: '/profile', 
          pageBuilder: (context, state) => const NoTransitionPage(child: Center(child: Text('Profile Page'))),
        ),
      ],
    ),
  ],
);