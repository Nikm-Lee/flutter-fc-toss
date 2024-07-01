import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock(
      {required super.stockName,
      required this.stockImagePath,
      required super.yesterdayClosePrice,
      required super.currentPrice});

}
