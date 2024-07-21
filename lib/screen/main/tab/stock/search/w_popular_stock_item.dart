import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_stock_item.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int rank;

  const PopularStockItem(this.stock, this.rank, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: rank.text.make(),
          ),
          width30,
          stock.name.text.make(),
          emptyExpanded,
          stock.todayPercentageString.text
              .color(stock.getPriceColor(context))
              .make()
        ],
      ),
    );
  }
}
