import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';

class FilteringHeader extends StatelessWidget {
  const FilteringHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'رجوع للأفتراضى',
              style: TextStyles.styleBold16.copyWith(color: AppColors.primary),
            ),
          ),
          Row(
            children: [
              Text('فلترة', style: TextStyles.styleMedium24.copyWith(color: AppColors.darkBlue)),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, weight: 900, color: AppColors.darkBlue),
              ),
            ],
          )
        ],
      ),
    );
  }
}