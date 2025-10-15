import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';

class ImageCategoriesBar extends StatelessWidget {
  const ImageCategoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _CategoryItem(
              imagePath: Assets.assetsImagesMakeup,
              label: 'منتجات تجميل',
            ),
            _CategoryItem(
              imagePath: Assets.assetsImagesMobile,
              label: 'موبايلات',
            ),
            _CategoryItem(
              imagePath: Assets.assetsImagesWatch,
              label: 'ساعات',
            ),
            _CategoryItem(
              imagePath: Assets.assetsImagesFashion,
              label: 'موضة رجالي',
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({required this.imagePath, required this.label});

  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.blackWithOpacity10.withOpacity(.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                height: 56,
                width: 73,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyles.styleRegular12,
          ),
        ],
      ),
    );
  }
}
