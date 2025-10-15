
import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: 328,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.orange.withOpacity(.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                '! لأى عرض تطلبه دلوقتى ',
                style: TextStyles.styleRegular10,
              ),
            ),
            Row(
              spacing: 4,
              children: [
                Text(
                  'شحن مجاني',
                  style: TextStyles.styleRegular12.copyWith(
                    color: AppColors.green,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.28),
                  child: Image.asset(
                    height: 11.225000381469727,
                    width: 15.463000297546387,
                    Assets.assetsImagesCheck,
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
