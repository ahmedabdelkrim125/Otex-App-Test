import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';

class CustomizedPlansCard extends StatelessWidget {
  const CustomizedPlansCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'باقات مخصصة لك',
            style: TextStyles.styleMedium14,
          ),
          const SizedBox(height: 8),
          const Text(
            'تواصل معنا لأختيار الباقة المناسبة لك',
            style: TextStyles.styleRegular12,
          ),
          const SizedBox(height: 8),
          Text(
            'فريق المبيعات',
            style: TextStyles.styleBold16.copyWith(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
