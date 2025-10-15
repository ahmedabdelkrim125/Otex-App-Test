import 'package:flutter/material.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'package:otex_app_test/core/utils/app_dimensions.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/categories_list_view.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/custom_explore_header.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/image_categories_bar.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/product_card.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/promo_banner.dart';
import 'dart:math';

class OffersPageBody extends StatelessWidget {
  const OffersPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    final double screenWidth = AppDimensions.screenWidth;
    final double screenHeight = AppDimensions.screenHeight;

    final List<String> productImages = [
      Assets.assetsImages1,
      Assets.assetsImages2,
      Assets.assetsImages3,
    ];

    final random = Random();

    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: screenHeight * (20 / 812)),
            const CustomExploreHeader(),
            const CategoriesListView(),
            SizedBox(height: screenHeight * (33 / 812)),
            const ImageCategoriesBar(),
            SizedBox(height: screenHeight * (33 / 812)),
            const PromoBanner(),
            SizedBox(height: screenHeight * (20 / 812)),
            GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: screenWidth * (12 / 375),
                mainAxisSpacing: screenWidth * (12 / 375),
                childAspectRatio:
                    (screenWidth * (158 / 375)) / (screenHeight * (360 / 812)),
              ),
              itemBuilder: (context, index) {
                final randomImage =
                    productImages[random.nextInt(productImages.length)];
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * (8 / 375)),
                    child: ProductCard(
                      assetsImages: randomImage,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: screenHeight * (20 / 812)),
          ],
        ),
      ),
    );
  }
}
