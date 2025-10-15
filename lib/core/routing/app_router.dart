import 'package:go_router/go_router.dart';
import 'package:otex_app_test/features/filtering/presentation/view/filtering_page.dart';
import 'package:otex_app_test/features/offers/presentation/view/offers_page.dart';
import 'package:otex_app_test/features/plans/presentation/view/plans_page.dart';
import 'routes_names.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RoutesNames.offers,
        builder: (context, state) => const OffersPage(),
      ),
      
      GoRoute(
        path: RoutesNames.plans,
        builder: (context, state) => PlansPage(),
      ),
       GoRoute(
        path: RoutesNames.filtering,
        builder: (context, state) => FilteringPage(),
      ),
    ],
  );
}
