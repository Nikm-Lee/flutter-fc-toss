import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_interest_stock_list.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          bottom: MainScreenState.bottomNavigationBarHeight),
      child: Column(
        children: [
          getMyAccount(context),
          height20,
          getMyStock(context),
        ],
      ),
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            "계좌".text.make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                width10,
                const Arrow(),
                emptyExpanded,
                RoundedContainer(
                  backgroundColor: context.appColors.buttonBackground,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  radius: 8,
                  child: "채우기".text.size(12).make(),
                ),
                width20
              ],
            ),
            height30,
            Line(
              color: context.appColors.divider,
            ),
            height10,
             LongButton(
              title: '주문내역',
              onTap: () => context.showSnackbar("주문내역"),
            ),
            const LongButton(title: '판매수익'),
          ],
        ),
      );
  Widget getMyStock(BuildContext context) => Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                height30,
                Row(
                  children: [
                    '관심주식'.text.bold.make(),
                    emptyExpanded,
                    '편집하기'
                        .text
                        .color(context.appColors.lessImportantText)
                        .make()
                  ],
                ),
                height20,
                Tap(
                  onTap: () {
                    context.showSnackbar('기본');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '기본'.text.make(),
                        const Arrow(
                          direction: AxisDirection.up,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InterestStock().pSymmetric(h: 20),
        ],
      );
}
