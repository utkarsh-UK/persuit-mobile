import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/portfolio/widgets/holdings.dart';
import 'package:persuit/presentation/screens/portfolio/widgets/positions.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class PortfolioTab extends StatelessWidget {
  const PortfolioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSliverContent(
      appBarTitle: 'Portfolio',
      tabCount: 2,
      hideTabs: false,
      tabs: [
        Tab(text: 'Holdings'),
        Tab(text: 'Positions'),
      ],
      tabViews: [
        Holdings(),
        Positions(),
      ],
    );
  }
}
