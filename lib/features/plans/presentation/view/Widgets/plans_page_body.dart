import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/utils/custom_button.dart';
import 'package:otex_app_test/features/plans/data/models/plan_model.dart';
import 'package:otex_app_test/features/plans/presentation/view/Widgets/customized_plans_card.dart';
import 'package:otex_app_test/features/plans/presentation/view/Widgets/plan_card.dart';
import 'package:otex_app_test/features/plans/presentation/view/Widgets/plans_header.dart';

class PlansPageBody extends StatelessWidget {
  const PlansPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlanModel> plans = [
      PlanModel(
        title: 'أساسية',
        price: '3,000 ج.م',
        titleColor: AppColors.darkBlue,
        isSelected: false,
        features: [
          PlanFeature(
              icon: Icons.timer_outlined, text: 'صلاحية الأعلان 30 يوم'),
        ],
      ),
      PlanModel(
        title: 'أكسترا',
        price: '3,000 ج.م',
        isSelected: true,
        titleColor: AppColors.primary,
        features: [
          PlanFeature(
              icon: Icons.timer_outlined, text: 'صلاحية الأعلان 30 يوم'),
          PlanFeature(
              icon: Icons.rocket_launch_outlined,
              text: 'رفع لأعلى القائمة كل 3 أيام'),
          PlanFeature(
            icon: Icons.push_pin_outlined,
            text: 'تثبيت في مقاول صحي',
            highlightedText: '( خلال ال 48 ساعة القادمة )',
          ),
        ],
        viewsMultiplier: 7,
      ),
      PlanModel(
        title: 'بلس',
        price: '3,000 ج.م',
        isSelected: true,
        tagText: 'أفضل قيمة مقابل سعر',
        tagColor: const Color(0xFFFFE1E1),
        titleColor: AppColors.primary,
        features: [
          PlanFeature(
              icon: Icons.timer_outlined, text: 'صلاحية الأعلان 30 يوم'),
          PlanFeature(
              icon: Icons.rocket_launch_outlined,
              text: 'رفع لأعلى القائمة كل 2 يوم'),
          PlanFeature(
              icon: Icons.push_pin_outlined,
              text: 'تثبيت في مقاول صحي',
              highlightedText: '( خلال ال 48 ساعة القادمة )'),
          PlanFeature(icon: Icons.public, text: 'ظهور في كل محافظات مصر'),
          PlanFeature(icon: Icons.star_border, text: 'إعلان مميز'),
          PlanFeature(
              icon: Icons.push_pin_outlined,
              text: 'تثبيت في مقاول صحي في الجهراء'),
        ],
        viewsMultiplier: 18,
      ),
      PlanModel(
        title: 'سوبر',
        price: '3,000 ج.م',
        isSelected: false,
        tagText: 'أعلى مشاهدات',
        tagColor: const Color(0xFFFFE1E1),
        titleColor: AppColors.darkBlue,
        features: [
          PlanFeature(
              icon: Icons.timer_outlined, text: 'صلاحية الأعلان 30 يوم'),
          PlanFeature(
              icon: Icons.rocket_launch_outlined,
              text: 'رفع لأعلى القائمة كل 2 يوم'),
          PlanFeature(
              icon: Icons.push_pin_outlined,
              text: 'تثبيت في مقاول صحي',
              highlightedText: '( خلال ال 48 ساعة القادمة )'),
          PlanFeature(icon: Icons.public, text: 'ظهور في كل محافظات مصر'),
          PlanFeature(icon: Icons.star_border, text: 'إعلان مميز'),
          PlanFeature(
              icon: Icons.push_pin_outlined,
              text: 'تثبيت في مقاول صحي في الجهراء'),
          PlanFeature(
              icon: Icons.push_pin_outlined,
              text: 'تثبيت في مقاول صحي',
              highlightedText: '( خلال ال 48 ساعة القادمة )'),
        ],
        viewsMultiplier: 24,
      ),
    ];

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 80),
      children: [
        const PlansHeader(),
        const SizedBox(height: 24),
        ...plans.map(
          (plan) => Padding(
            padding:
                const EdgeInsets.only(bottom: 24.0), 
            child: PlanCard(plan: plan),
          ),
        ),
        const SizedBox(height: 32),
        const CustomizedPlansCard(),
        const SizedBox(height: 199),
        CustomButton(
          text: 'التالي',
          onPressed: () {
            log('تم الضغط على التالي');
          },
        ),
      ],
    );
  }
}
