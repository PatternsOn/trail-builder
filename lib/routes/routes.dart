import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trail_builder/features/roller_calculator/ui/roller_calculator_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return RollerCalculatorPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'roller-calculator',
          builder: (BuildContext context, GoRouterState state) {
            return RollerCalculatorPage();
          },
        ),
      ],
    ),
  ],
);
