import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/offers_page_body.dart';
import 'package:otex_app_test/logic/category_cubit.dart';
import 'package:otex_app_test/presentation/cubit/bottom_nav_cubit.dart';
import 'package:otex_app_test/presentation/widgets/custom_bottom_nav_bar.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocProvider(
        create: (context) => CategoryCubit(),
        child: Scaffold(
          body: OffersPageBody(),
          bottomNavigationBar: CustomBottomNavBar(),
        ),
      ),
    );
  }
}
