import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';

class ImageCategoriesBar extends StatelessWidget {
  const ImageCategoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    final double screenHeight = AppDimensions.screenHeight;

    return SizedBox(
      height: screenHeight * (120 / 812),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
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
    AppDimensions.init(context);
    final double screenWidth = AppDimensions.screenWidth;
    final double screenHeight = AppDimensions.screenHeight;

    return Padding(
      padding: EdgeInsets.only(left: screenWidth * (12 / 375)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(screenWidth * (12 / 375)),
            decoration: BoxDecoration(
              color: AppColors.blackWithOpacity10.withOpacity(0.1),
              borderRadius: BorderRadius.circular(screenWidth * (16 / 375)),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                height: screenHeight * (56 / 812),
                width: screenWidth * (73 / 375),
              ),
            ),
          ),
          SizedBox(height: screenHeight * (8 / 812)),
          Text(
            label,
            style: TextStyles.styleRegular12,
          ),
        ],
      ),
    );
  }
}