import 'package:flutter/material.dart';
import 'package:otex_app_test/features/plans/presentation/view/Widgets/plans_page_body.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PlansPageBody(),
      ),
    );
  }
}
