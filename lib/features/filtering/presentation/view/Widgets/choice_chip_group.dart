import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'section_header.dart';

class ChoiceChipGroup extends StatelessWidget {
  final String title;
  final List<String> options;
  final String selectedOption;

  const ChoiceChipGroup({
    super.key,
    required this.title,
    required this.options,
    required this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SectionHeader(title: title),
        const SizedBox(height: 12),
        Wrap(
          alignment: WrapAlignment.end,
          spacing: 8.0,
          runSpacing: 8.0,
          children: options.map((option) {
            bool isSelected = option == selectedOption;
            return ChoiceChip(
              label: Text(option),
              selected: isSelected,
              onSelected: (selected) {},
              labelStyle: TextStyles.styleMedium14.copyWith(
                color: isSelected ? Colors.white : AppColors.darkBlue,
              ),
              backgroundColor: Colors.grey.shade100,
              selectedColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected ? AppColors.primary : Colors.grey.shade300,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            );
          }).toList(),
        ),
      ],
    );
  }
}