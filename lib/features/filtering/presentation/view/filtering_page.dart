import 'package:flutter/material.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/filtering_page_body.dart';

class FilteringPage extends StatelessWidget {
  const FilteringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FilteringPageBody(),
      ),
    );
  }
}
