import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/tools/alerts.dart';
import 'package:persuit/presentation/screens/tools/baskets.dart';
import 'package:persuit/presentation/screens/tools/sips.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class ToolsTab extends StatelessWidget {
  const ToolsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSliverContent(
      appBarTitle: 'Tools',
      tabCount: 3,
      hideTabs: false,
      tabs: [
        Tab(text: 'Baskets'),
        Tab(text: 'SIPs'),
        Tab(text: 'Alerts'),
      ],
      tabViews: [
        Baskets(),
        SIPs(),
        Alerts(),
      ],
    );
  }
}
