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
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 12,
                offset: const Offset(0, -2),
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
        child: Container(
          padding: const EdgeInsets.only(top: 8, bottom: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: isSelected ? AppColors.primary : const Color(0xffA1A7B4),
                size: 27,
              ),
              const SizedBox(height: 6),
              Text(
                label,
                style: isSelected
                    ? TextStyles.styleBold14.copyWith(
                        color: AppColors.primary,
                        fontSize: 13,
                      )
                    : TextStyles.styleRegular12.copyWith(
                        color: const Color(0xffA1A7B4),
                        fontSize: 12,
                      ),
              ),
              const SizedBox(height: 6),
              SizedBox(
                height: 4,
                child: isSelected
                    ? CustomPaint(
                        size: const Size(55, 4),
                        painter: _CurvedIndicatorPainter(
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
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
      ..strokeWidth = 2.5
      ..strokeCap = StrokeCap.round;

    final path = Path();
    const double curveDepth = 4.0;

    path.moveTo(0, 0);

    path.quadraticBezierTo(
      size.width * 0.25,
      curveDepth,
      size.width * 0.5,
      curveDepth,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      curveDepth,
      size.width,
      0,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
