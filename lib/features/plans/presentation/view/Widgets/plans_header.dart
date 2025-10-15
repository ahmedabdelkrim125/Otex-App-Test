import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';

class PlansHeader extends StatelessWidget {
  const PlansHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'أختر الباقات اللى تناسبك',
              style: TextStyles.styleMedium24.copyWith(
                color: AppColors.darkBlue,
              ),
            ),
            IconButton(
              onPressed: () {
                context.push('/');
              },
              icon: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
        Text(
          'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
          style: TextStyles.styleRegular14.copyWith(
            color: AppColors.darkBlue.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
