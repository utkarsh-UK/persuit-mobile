import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/watchlist/widgets/watch_list.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class WatchlistTab extends StatelessWidget {
  const WatchlistTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSliverContent(
      key: UniqueKey(),
      appBarTitle: 'Marketwatch',
      hideTabs: false,
      tabCount: 6,
      isTabScrollable: true,
      tabs: const [
        Tab(text: 'MW 1'),
        Tab(text: 'MW 2'),
        Tab(text: 'MW 3'),
        Tab(text: 'MW 4'),
        Tab(text: 'MW 5'),
        Tab(text: 'MW 6'),
      ],
      tabViews: const [
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
