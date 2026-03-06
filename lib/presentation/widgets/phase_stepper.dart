import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class PhaseStepper extends StatelessWidget {
  const PhaseStepper({super.key, required this.currentStep});

  /// 1-based current step (1 = first phase, 5 = fifth phase).
  final int currentStep;

  static const _steps = ['Data', 'Simulasi', 'Review', 'Dokumen', 'Bukti'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      child: Row(
        children: [
          for (int i = 0; i < _steps.length; i++) ...[
            if (i > 0)
              Expanded(
                child: Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: i < currentStep
                        ? const Color(0xFF10B981)
                        : const Color(0xFFE8E8F0),
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ),
            _StepItem(
              index: i + 1,
              label: _steps[i],
              isCompleted: i + 1 < currentStep,
              isCurrent: i + 1 == currentStep,
            ),
          ],
        ],
      ),
    );
  }
}

class _StepItem extends StatelessWidget {
  const _StepItem({
    required this.index,
    required this.label,
    required this.isCompleted,
    required this.isCurrent,
  });

  final int index;
  final String label;
  final bool isCompleted;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    final Color circleColor = isCompleted
        ? const Color(0xFF10B981)
        : isCurrent
            ? AppColors.primary
            : const Color(0xFFD1D5DB);

    final Color labelColor = isCompleted
        ? const Color(0xFF10B981)
        : isCurrent
            ? AppColors.primary
            : const Color(0xFF9CA3AF);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: (isCompleted || isCurrent) ? circleColor : Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: circleColor, width: 2),
          ),
          child: isCompleted
              ? const Icon(Icons.check_rounded, color: Colors.white, size: 15)
              : Center(
                  child: Text(
                    '$index',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: isCurrent ? Colors.white : circleColor,
                    ),
                  ),
                ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 9,
            fontWeight: (isCompleted || isCurrent) ? FontWeight.w700 : FontWeight.w500,
            color: labelColor,
          ),
        ),
      ],
    );
  }
}
