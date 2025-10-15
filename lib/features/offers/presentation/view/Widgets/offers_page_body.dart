import 'package:flutter/material.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/categories_list_view.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/custom_explore_header.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/image_categories_bar.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/product_card.dart';
import 'package:otex_app_test/features/offers/presentation/view/Widgets/promo_banner.dart';
import 'package:otex_app_test/core/assets_images.dart';
import 'dart:math';

class OffersPageBody extends StatelessWidget {
  const OffersPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> productImages = [
      Assets.assetsImages1,
      Assets.assetsImages2,
      Assets.assetsImages3,
    ];

    final random = Random();

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const CustomExploreHeader(),
          const CategoriesListView(),
          const SizedBox(height: 33),
          const ImageCategoriesBar(),
          const SizedBox(height: 33),
          const PromoBanner(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 158 / 360,
              ),
              itemBuilder: (context, index) {
                final randomImage =
                    productImages[random.nextInt(productImages.length)];

                return ProductCard(
                  assetsImages: randomImage,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
