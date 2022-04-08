import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/watchlist/widgets/watch_list.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class WatchlistTab extends StatelessWidget {
  const WatchlistTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSliverContent(
      appBarTitle: 'Marketwatch',
      tabCount: 6,
      isTabScrollable: true,
      tabs: [
        Tab(text: 'IT Companies'),
        Tab(text: 'Bank'),
        Tab(text: 'Indices'),
        Tab(text: 'Hospitality'),
        Tab(text: 'First Stocks'),
        Tab(text: 'MW 6'),
      ],
      tabViews: [
        WatchList(),
        WatchList(),
        WatchList(),
        WatchList(),
        WatchList(),
        WatchList(),
      ],
    );
  }
}
