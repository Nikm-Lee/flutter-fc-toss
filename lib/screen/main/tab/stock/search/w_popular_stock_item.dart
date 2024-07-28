import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int rank;

  const PopularStockItem(this.stock, this.rank, {super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
        openColor: context.backgroundColor,
        closedColor: context.backgroundColor,
        openBuilder: (BuildContext context, VoidCallback _) {
          return StockDetailScreen(stock.name);
        },
        closedBuilder: (BuildContext context, VoidCallback action) {
          return Row(
            children: [
              rank.text.bold.white.size(16).make(),
              width20,
              stock.name.text.bold.white.size(16).make(),
              emptyExpanded,
              stock.todayPercentageString.text
                  .color(stock.getPriceColor(context))
                  .size(16)
                  .make()
            ],
          ).pSymmetric(h: 20, v: 20);
        });
  }
}
