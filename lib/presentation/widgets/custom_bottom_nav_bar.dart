import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_test/core/app_colors.dart';
import 'package:otex_app_test/core/text_styles.dart';
import 'package:otex_app_test/presentation/cubit/bottom_nav_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, selectedIndex) {
        return Container(
          height: 75,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context: context,
                icon: Icons.home_filled,
                label: 'الرئيسية',
                index: 0,
                selectedIndex: selectedIndex,
              ),
              _buildNavItem(
                context: context,
                icon: Icons.chat_bubble_outline,
                label: 'محادثة',
                index: 1,
                selectedIndex: selectedIndex,
              ),
              _buildNavItem(
                context: context,
                icon: Icons.add_box,
                label: 'أضف أعلن',
                index: 2,
                selectedIndex: selectedIndex,
              ),
              _buildNavItem(
                context: context,
                icon: Icons.grid_view_sharp,
                label: 'إعلاناتي',
                index: 3,
                selectedIndex: selectedIndex,
              ),
              _buildNavItem(
                context: context,
                icon: Icons.person_outline,
                label: 'حسابي',
                index: 4,
                selectedIndex: selectedIndex,
              ),
            ].reversed.toList(),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required int index,
    required int selectedIndex,
  }) {
    final bool isSelected = selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => context.read<BottomNavCubit>().changeIndex(index),
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomPaint(
              size: const Size(40, 5),
              painter: isSelected
                  ? _CurvedIndicatorPainter(color: AppColors.primary)
                  : null,
            ),
            const SizedBox(height: 6),
            Icon(
              icon,
              color: isSelected ? AppColors.darkBlue : const Color(0xffA1A7B4),
              size: 28,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: isSelected
                  ? TextStyles.styleBold14.copyWith(color: AppColors.primary)
                  : TextStyles.styleRegular12
                      .copyWith(color: const Color(0xffA1A7B4)),
            ),
          ],
        ),
      ),
    );
  }
}

class _CurvedIndicatorPainter extends CustomPainter {
  final Color color;
  _CurvedIndicatorPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    final path = Path();
    const double curveHeight = 4.0;

    path.moveTo(0, size.height);
    path.quadraticBezierTo(0, 0, curveHeight, 0);
    path.lineTo(size.width - curveHeight, 0);
    path.quadraticBezierTo(size.width, 0, size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

