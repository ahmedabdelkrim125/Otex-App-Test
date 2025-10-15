import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('تغيير',
                style: TextStyles.styleRegular14
                    .copyWith(color: AppColors.primary)),
          ),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('عقارات', style: TextStyles.styleMedium14),
                  Text('فلل للبيع', style: TextStyles.styleRegular12),
                ],
              ),
              const SizedBox(width: 12),
              Image.asset(Assets.assetsImagesMaterial)
            ],
          ),
        ],
      ),
    );
  }
}
