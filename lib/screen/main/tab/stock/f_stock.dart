import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_my_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_todays_discovery.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () => context.showSnackbar("검색"),
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () => context.showSnackbar("일정"),
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () => context.showSnackbar("세팅"),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
              if (currentIndex == 0)
                const MyStockFragment()
              else
                const TodaysDiscoveryFragment()
            ],
          ),
        )
      ],
    );
  }

  Widget get title => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.white.size(24).bold.make(),
            width10,
            '코스피'
                .text
                .color(context.appColors.lessImportantText)
                .size(13)
                .make(),
            width10,
            2914.32
                .toComma()
                .text
                .color(context.appColors.plus)
                .size(13)
                .bold
                .make(),
          ],
        ).pOnly(left: 10),
      );

  Widget get tabBar => Container(
    child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.symmetric(vertical: 20),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: Colors.white,
              controller: tabController,
              tabs: [
                "내 주식".text.make(),
                "오늘이 발견".text.make(),
              ],
            ),
            const Line()
          ],
        ),
  );

  Widget get myAccount => Placeholder();

  Widget get myStocks => Placeholder();
}
