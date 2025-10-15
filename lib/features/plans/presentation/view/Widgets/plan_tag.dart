import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';

class PlanTag extends StatelessWidget {
  final String text;
  final Color color;
  const PlanTag({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _TagClipper(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 4, 12, 4),
        decoration: BoxDecoration(
          color: color,
        ),
        child: Text(
          text,
          style: TextStyles.styleMedium14.copyWith(color: AppColors.error),
        ),
      ),
    );
  }
}

class _TagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double notchDepth = 8.0;

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(notchDepth, size.height / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
