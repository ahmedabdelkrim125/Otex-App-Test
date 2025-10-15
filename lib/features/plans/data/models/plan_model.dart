import 'package:flutter/material.dart';

class PlanFeature {
  final IconData icon;
  final String text;
  final String? highlightedText;

  PlanFeature({required this.icon, required this.text, this.highlightedText});
}

class PlanModel {
  final String title;
  final String price;
  final bool isSelected;
  final List<PlanFeature> features;
  final int? viewsMultiplier;
  final String? tagText;
  final Color? tagColor;
  final Color titleColor;

  PlanModel({
    required this.title,
    required this.price,
    this.isSelected = false,
    required this.features,
    this.viewsMultiplier,
    this.tagText,
    this.tagColor,
    required this.titleColor,
  });
}