import 'package:flutter/material.dart';
import 'package:otex_app_test/core/routing/app_router.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';

void main() {
  runApp(const OtexApp());
}

class OtexApp extends StatelessWidget {
  const OtexApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
