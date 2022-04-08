import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/watchlist/widgets/watch_list.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSliverContent(
      appBarTitle: 'Profile',
      tabCount: 3,
      tabs: [
        Tab(text: 'Open'),
        Tab(text: 'Executed'),
        Tab(text: 'GTT'),
      ],
      tabViews: [
        WatchList(),
        WatchList(),
        WatchList(),
      ],
    );
  }
}
