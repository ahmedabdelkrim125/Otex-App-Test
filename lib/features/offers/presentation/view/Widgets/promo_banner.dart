import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    final double screenWidth = AppDimensions.screenWidth;
    final double screenHeight = AppDimensions.screenHeight;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * (16 / 375)),
      child: Container(
        width: screenWidth * (328 / 375),
        height: screenHeight * (32 / 812),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth * (8 / 375)),
          color: AppColors.orange.withOpacity(0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * (8 / 375)),
              child: const Text(
                '! لأى عرض تطلبه دلوقتى ',
                style: TextStyles.styleRegular10,
              ),
            ),
            Row(
              children: [
                Text(
                  'شحن مجاني',
                  style: TextStyles.styleRegular12.copyWith(
                    color: AppColors.green,
                  ),
                ),
                SizedBox(width: screenWidth * (4 / 375)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * (12.28 / 375)),
                  child: Image.asset(
                    Assets.assetsImagesCheck,
                    height: screenHeight * (11.22 / 812),
                    width: screenWidth * (15.46 / 375),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}