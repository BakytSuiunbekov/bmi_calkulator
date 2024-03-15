import 'dart:math';

import 'package:bmi_calkulator/utils/app_colors.dart';
import 'package:bmi_calkulator/utils/app_text.dart';
import 'package:bmi_calkulator/widgets/alert_dialog.dart';
import 'package:bmi_calkulator/widgets/calkulate_btn.dart';
import 'package:bmi_calkulator/widgets/gender_widjet.dart';
import 'package:bmi_calkulator/widgets/slider_widget.dart';
import 'package:bmi_calkulator/widgets/status_card.dart';
import 'package:bmi_calkulator/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double height = 180;
  int weight = 60;
  int age = 28;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bacgroundColor,
        title: const Text(
          AppText.appBar,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.bacgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: GenderWidjet(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  StatusCard(
                    widget: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: GenderWidjet(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StatusCard(
              widget: SliderWidget(
                currentValue: height,
                onChaged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: WwightAndAge(
                      remove: (value) {
                        setState(() {
                          weight = value;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                      text: AppText.weight,
                      value: weight,
                    ),
                  ),
                  StatusCard(
                    widget: WwightAndAge(
                      remove: (value) {
                        setState(() {
                          age = value;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                      text: AppText.age,
                      value: age,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalkulateBtn(
        onTap: () {
          final result = weight / pow(height / 100, 2);

          if (result <= 18.5) {
            alertDialog(
              context: context,
              text: 'Салмак аз',
              result: result,
              title: 'Сенин салмагын аз. Коп тамактан!!!',
              color: AppColors.redcolor,
            );
          } else if (result >= 18.5 && result <= 24.9) {
            alertDialog(
              context: context,
              text: 'Нормалдуу',
              result: result,
              title: 'Сенин салмагын жакшы',
              color: Colors.green,
            );
          } else if (result > 24.9) {
            alertDialog(
              context: context,
              text: 'Салмак коп',
              result: result,
              title: 'Сенин салмагын коп. Спорт менен алектен',
              color: AppColors.redcolor,
            );
          } else {
            alertDialog(
              context: context,
              text: 'ката бар',
              result: result,
              title: 'кайра белгиле',
              color: Colors.red,
            );
          }
        },
      ),
    );
  }
}
