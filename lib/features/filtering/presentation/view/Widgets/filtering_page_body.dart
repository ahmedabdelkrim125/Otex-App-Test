import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/ategory_section.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/choice_chip_group.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/custom_text_field.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/filtering_header.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/location_section.dart';
import 'package:otex_app_test/features/filtering/presentation/view/Widgets/section_header.dart';

class FilteringPageBody extends StatelessWidget {
  const FilteringPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const FilteringHeader(),
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                children: const [
                  CategorySection(),
                  SizedBox(height: 16),
                  LocationSection(),
                  SizedBox(height: 24),
                  SectionHeader(title: 'الأقساط الشهرية'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(child: CustomTextField(hintText: '')),
                      SizedBox(width: 16),
                      Expanded(child: CustomTextField(hintText: '')),
                    ],
                  ),
                  SizedBox(height: 24),
                  ChoiceChipGroup(
                    title: 'النوع',
                    options: ['الكل', 'توين هاوس', 'فيلا منفصلة', 'تاون هاوس'],
                    selectedOption: 'الكل',
                  ),
                  SizedBox(height: 24),
                  ChoiceChipGroup(
                    title: 'عدد الغرف',
                    options: ['5 غرف+', '4 غرف', '3 غرف', 'غرفتين', 'الكل'],
                    selectedOption: '5 غرف+',
                  ),
                  SizedBox(height: 24),
                  SectionHeader(title: 'السعر'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(child: CustomTextField(hintText: 'أقصى سعر')),
                      SizedBox(width: 16),
                      Expanded(child: CustomTextField(hintText: 'أقل سعر')),
                    ],
                  ),
                  SizedBox(height: 24),
                  ChoiceChipGroup(
                    title: 'طريقة الدفع',
                    options: ['كاش', 'تقسيط', 'أي'],
                    selectedOption: 'كاش',
                  ),
                  SizedBox(height: 24),
                  ChoiceChipGroup(
                    title: 'حالة العقار',
                    options: ['جاهز', 'قيد الأنشاء', 'أي'],
                    selectedOption: 'جاهز',
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          child: Text('شاهد +10,000 نتائج',
              style: TextStyles.styleBold16.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
