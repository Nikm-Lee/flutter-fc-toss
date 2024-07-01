import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

abstract mixin class StockPercentageDataProvider {

  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);

  String get todayPercentageString => "${symbol}$todayPercentage%";

  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isPlus ? "+" : "";

  Color getPriceColor(BuildContext context) => isPlus
      ? context.appColors.plus
      : isMinus
          ? context.appColors.minus
          : context.appColors.lessImportantText;
}
