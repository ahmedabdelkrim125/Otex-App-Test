import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.assetsImages});
  final String assetsImages;
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    final double screenWidth = AppDimensions.screenWidth;
    final double screenHeight = AppDimensions.screenHeight;

    return Stack(
      children: [
        Container(
          height: screenHeight * (215 / 812),
          width: screenWidth * (158 / 375),
          decoration: BoxDecoration(
            color: AppColors.black.withOpacity(0.05),
          ),
          child: Center(
            child: Image.asset(
              assetsImages,
            ),
          ),
        ),
        Container(
          width: screenWidth * (158 / 375),
          height: screenHeight * (360 / 812),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth * (5 / 375)),
            border: Border.all(
              color: AppColors.darkBluePure.withOpacity(0.1),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: screenHeight * (230 / 812)),
              Column(
                children: [
                  SizedBox(
                    width: screenWidth * (158 / 375),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.assetsImagesVector),
                        const Expanded(
                          child: Text(
                            'جاكيت من الصوف مناسب',
                            style: TextStyles.styleMedium14,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * (4 / 375)),
                    child: SizedBox(
                      width: screenWidth * (158 / 375),
                      child: Row(
                        children: [
                          const Icon(Icons.favorite_border),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '60,000,000',
                                    style: TextStyle(
                                      color: AppColors.darkBlue.withOpacity(0.5),
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                Text(
                                  '/',
                                  style: TextStyle(
                                    color: AppColors.darkBlue.withOpacity(0.5),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'جم',
                                      style: TextStyle(color: AppColors.error),
                                    ),
                                    const Text(
                                      '32,000,000',
                                      style: TextStyle(color: AppColors.error),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * (9 / 812)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * (10 / 375)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('+3.3k تم بيع'),
                        SizedBox(width: screenWidth * (6 / 375)),
                        SvgPicture.asset(
                          Assets.assetsImagesFire,
                          width: screenWidth * (15 / 375),
                          height: screenWidth * (15 / 375),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * (20 / 812)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * (8 / 375)),
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.assetsImagesLogo,
                              width: screenWidth * (24 / 375),
                              height: screenWidth * (24 / 375),
                            ),
                            SizedBox(width: screenWidth * (8 / 375)),
                            SvgPicture.asset(
                              Assets.assetsImagesAddToCart,
                              width: screenWidth * (24 / 375),
                              height: screenWidth * (24 / 375),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.assetsImagesCompanyBadge,
                        width: screenWidth * (24 / 375),
                        height: screenWidth * (24 / 375),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}