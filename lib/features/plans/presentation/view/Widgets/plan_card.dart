import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/features/plans/data/models/plan_model.dart';
import 'package:otex_app_test/features/plans/presentation/view/Widgets/plan_tag.dart';
import 'package:otex_app_test/features/plans/presentation/view/Widgets/views_indicator.dart';

class PlanCard extends StatelessWidget {
  final PlanModel plan;
  const PlanCard({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade200, width: 0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(plan.title,
                      style: TextStyles.styleBold16
                          .copyWith(color: plan.titleColor)),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: plan.isSelected,
                      onChanged: (value) {},
                      activeColor: AppColors.primary,
                    ),
                  ),
                  const Spacer(),
                  Text(plan.price,
                      style: TextStyles.styleBold16
                          .copyWith(color: AppColors.orange)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (plan.viewsMultiplier != null) ...[
                    ViewsIndicator(multiplier: plan.viewsMultiplier!),
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: Column(
                      children: plan.features
                          .map((feature) => _FeatureItem(feature: feature))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // التعديل الأول: تغيير مكان التاج من left إلى right
        if (plan.tagText != null)
          Positioned(
            top: -10,
            right: 20, // كان left، دلوقتي بقى right
            child: PlanTag(text: plan.tagText!, color: plan.tagColor!),
          ),
      ],
    );
  }
}

// التعديل الثاني: تعديل الويدجت عشان تنزل النص الأحمر سطر جديد
class _FeatureItem extends StatelessWidget {
  final PlanFeature feature;
  const _FeatureItem({required this.feature});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start, // مهم للمحاذاة
        children: [
          Icon(feature.icon, color: AppColors.darkBlue, size: 22),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, // محاذاة النص لليمين
              children: [
                Text(
                  feature.text,
                  textAlign: TextAlign.right,
                  style: TextStyles.styleMedium14
                      .copyWith(color: AppColors.darkBlue),
                ),
                if (feature.highlightedText != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      feature.highlightedText!,
                      textAlign: TextAlign.right,
                      style:
                          const TextStyle(color: AppColors.error, fontSize: 13),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
