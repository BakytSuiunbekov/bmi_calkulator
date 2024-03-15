import 'package:bmi_calkulator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GenderWidjet extends StatelessWidget {
  const GenderWidjet({
    super.key,
    required this.icon,
    required this.text,
    required this.isFemale,
  });

  final IconData icon;
  final String text;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
          color: isFemale ? AppColors.white : AppColors.greycolor,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: isFemale ? AppColors.white : AppColors.greycolor,
          ),
        )
      ],
    );
  }
}
