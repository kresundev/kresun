import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = 100});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF9B9EF7), AppColors.primary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(size * 0.26),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.35),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Center(
        child: Text(
          'KRESUN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: size * 0.15,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
