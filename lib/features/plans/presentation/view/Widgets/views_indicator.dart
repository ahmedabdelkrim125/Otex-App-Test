import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';

class ViewsIndicator extends StatelessWidget {
  final int multiplier;
  const ViewsIndicator({super.key, required this.multiplier});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 70,
          height: 45,
          child: CustomPaint(
            painter: _HalfCirclePainter(color: AppColors.green),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  multiplier.toString(),
                  style:
                      TextStyles.styleMedium24.copyWith(color: AppColors.green),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'ضعف عدد\nالمشاهدات',
          style: TextStyles.styleRegular12.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}

class _HalfCirclePainter extends CustomPainter {
  final Color color;
  _HalfCirclePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height),
        width: size.width,
        height: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
