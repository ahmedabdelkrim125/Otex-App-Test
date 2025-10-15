import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart' show TextStyles;
import 'package:otex_app_test/logic/category_cubit.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<String> categories = const [
    'عقارات',
    'سيارات',
    'الكترونيات',
    'أكسسوارات',
    'ملابس',
    'كل العروض',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return BlocBuilder<CategoryCubit, int>(
              builder: (context, selectedIndex) {
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () => context.read<CategoryCubit>().selectCategory(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(left: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0x0DF95B1C) : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected ? AppColors.orange : Colors.grey.shade300,
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: isSelected
                        ? TextStyles.styleBold14
                            .copyWith(color: AppColors.orange)
                        : TextStyles.styleMedium14.copyWith(
                            color:
                                AppColors.darkBlueWithOpacity50.withOpacity(.5),
                          ),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
