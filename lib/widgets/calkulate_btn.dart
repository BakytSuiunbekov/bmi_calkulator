import 'package:bmi_calkulator/utils/app_colors.dart';
import 'package:bmi_calkulator/utils/app_text.dart';
import 'package:flutter/material.dart';

class CalkulateBtn extends StatelessWidget {
  const CalkulateBtn({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        color: AppColors.redcolor,
        child: const Center(
          child: Text(
            AppText.calkulator,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
