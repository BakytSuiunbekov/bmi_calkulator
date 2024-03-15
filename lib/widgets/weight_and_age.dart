import 'package:bmi_calkulator/utils/app_colors.dart';
import 'package:bmi_calkulator/widgets/remove_add_button.dart';
import 'package:flutter/material.dart';

class WwightAndAge extends StatelessWidget {
  const WwightAndAge({
    super.key,
    required this.add,
    required this.remove,
    required this.text,
    required this.value,
  });
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.greycolor,
          ),
        ),
        Text(
          '$value',
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w800,
            color: AppColors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WemoveAddButton(
              onPresset: () => remove(value - 1),
              icon: Icons.remove,
            ),
            const SizedBox(width: 10),
            WemoveAddButton(
              onPresset: () => add(value + 1),
              icon: Icons.add,
            ),
          ],
        )
      ],
    );
  }
}
