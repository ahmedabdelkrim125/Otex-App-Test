import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';

class CustomExploreHeader extends StatelessWidget {
  const CustomExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: 24,
                color: AppColors.blackWithOpacity50.withOpacity(.5),
              ),
            ),
            Text(
              'الكل',
              style: TextStyles.styleBold16.copyWith(
                color: AppColors.blackWithOpacity50.withOpacity(.5),
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
