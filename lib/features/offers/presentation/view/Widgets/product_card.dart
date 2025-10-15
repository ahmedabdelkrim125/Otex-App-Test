import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key,required this.assetsImages});
final String  assetsImages;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 215,
          width: 158,
          decoration: BoxDecoration(
            color: AppColors.black.withOpacity(0.05),
          ),
          child: Center(
            child: Image.asset(
              //here
              assetsImages,
            ),
          ),
        ),
        Container(
          width: 158,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.darkBluePure.withOpacity(.1),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 230),
              Column(
                children: [
                  SizedBox(
                    width: 158,
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.assetsImagesVector),
                        Expanded(
                          child: Text(
                            
                            'جاكيت من الصوف مناسب',
                            style: TextStyles.styleMedium14
                                .copyWith(color: AppColors.darkBlue),
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
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: SizedBox(
                      width: 158,
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    
                                    '60,000,000',
                                    style: TextStyle(
                                      color:
                                          AppColors.darkBlue.withOpacity(0.5),
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
                                    Text(
                                      'جم',
                                      style: TextStyle(color: AppColors.error),
                                    ),
                                    Text(
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
                  SizedBox(height: 9),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('+3.3k تم بيع'),
                        SvgPicture.asset(
                          Assets.assetsImagesFire,
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Row(
                          spacing: 8,
                          children: [
                            Image.asset(
                              Assets.assetsImagesLogo,
                              width: 24,
                              height: 24,
                            ),
                            SvgPicture.asset(
                              Assets.assetsImagesAddToCart,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.assetsImagesCompanyBadge,
                        width: 24,
                        height: 24,
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
