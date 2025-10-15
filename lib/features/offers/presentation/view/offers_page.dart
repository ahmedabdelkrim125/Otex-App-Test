import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/offers_page_body.dart';
// ١. استيراد صفحة الخطط
import 'package:otex_app_test/features/plans/presentation/view/plans_page.dart';
import 'package:otex_app_test/logic/category_cubit.dart';
import 'package:otex_app_test/presentation/cubit/bottom_nav_cubit.dart';
import 'package:otex_app_test/presentation/widgets/custom_bottom_nav_bar.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  static const List<Widget> _pages = <Widget>[
    OffersPageBody(),
    Center(child: Text('صفحة المحادثة')),
    Center(child: Text('صفحة أضف أعلن')),
    Center(child: Text('صفحة إعلاناتي')),
    PlansPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavCubit()),
        BlocProvider(create: (context) => CategoryCubit()),
      ],
      child: Scaffold(
        body: BlocBuilder<BottomNavCubit, int>(
          builder: (context, selectedIndex) {
            return IndexedStack(
              index: selectedIndex,
              children: _pages,
            );
          },
        ),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
