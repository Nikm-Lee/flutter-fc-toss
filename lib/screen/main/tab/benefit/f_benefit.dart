import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/benefit/benefits_dummy.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_point_button.dart';
import 'package:flutter/material.dart';

class BenefitFragment extends StatelessWidget {
  const BenefitFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigationBarHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height30,
          "혜택".text.white.bold.size(18).make(),
          height30,
          PointButton(point: 569),
          height20,
          "혜택 더 받기".text.white.bold.size(16).make(),

          ...benefitList.map((benefit) => BenefitItem(benefit: benefit)).toList(),
        ],
      ).pSymmetric(h: 20),
    );
  }
}
