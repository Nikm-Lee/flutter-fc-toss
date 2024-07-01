import 'package:fast_app_base/screen/main/tab/stock/stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_stock_item.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';
import 'package:flutter/material.dart';

class InterestStock extends StatelessWidget {
  const InterestStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks
            .map((element) => StockItem(
                  stock: element,
                ))
            .toList(),
      ],
    );
  }
}
