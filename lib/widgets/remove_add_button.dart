import 'package:bmi_calkulator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WemoveAddButton extends StatelessWidget {
  const WemoveAddButton({
    super.key,
    required this.onPresset,
    required this.icon,
  });
  final IconData icon;
  final void Function()? onPresset;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresset,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(4),
        backgroundColor: AppColors.greycolor,
        foregroundColor: AppColors.redcolor,
      ),
      child: Icon(
        icon,
        color: AppColors.white,
        size: 50,
      ),
    );
  }
}
