import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_test/features/offers/presentation/view/offers_page.dart';
import 'routes_names.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RoutesNames.offers,
        builder: (context, state) => const OffersPage(),
      ),
      GoRoute(
        path: RoutesNames.filter,
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Filter Page')),
        ),
      ),
      GoRoute(
        path: RoutesNames.plans,
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Plans Page')),
        ),
      ),
    ],
  );
}
