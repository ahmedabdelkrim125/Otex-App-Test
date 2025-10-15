import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/routing/routes_names.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';

class CustomExploreHeader extends StatelessWidget {
  const CustomExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    final double screenWidth = AppDimensions.screenWidth;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => context.push(RoutesNames.filtering),
              icon: Icon(
                Icons.arrow_back,
                size: screenWidth * (24 / 375),
                color: AppColors.blackWithOpacity50.withOpacity(0.5),
              ),
            ),
            Text(
              'الكل',
              style: TextStyles.styleBold16.copyWith(
                color: AppColors.blackWithOpacity50.withOpacity(0.5),
              ),
            ),
          ],
        ),
        Text(
          'أستكشف العروض',
          style: TextStyles.styleMedium16.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}