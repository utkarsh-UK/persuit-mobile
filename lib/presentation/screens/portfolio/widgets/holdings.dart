import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/data.dart';
import 'package:persuit/presentation/screens/portfolio/widgets/holding_item.dart';
import 'package:persuit/presentation/screens/portfolio/widgets/portfolio_summary.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';
import 'package:persuit/presentation/widgets/secondary_text_button.dart';

import '../../../../core/utils/extensions.dart';

class Holdings extends StatelessWidget {
  const Holdings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const OverlayedBox(
          totalSize: 45,
          backgroundHeight: 22,
          dividingFactor: 4.5,
          child: PortfolioSummary(),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.0.wp),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SecondaryTextButton(
                buttonText: 'Filter',
                icon: FontAwesomeIcons.sliders,
              ),
              SecondaryTextButton(
                buttonText: 'Analytics',
                icon: FontAwesomeIcons.circleNotch,
              ),
            ],
          ),
        ),
        Divider(
          color: inputBorderColor,
          thickness: 0.4.wp,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: holdings.length,
            separatorBuilder: (_, __) => Divider(
              color: inputBorderColor,
              thickness: 0.4.wp,
            ),
            padding: const EdgeInsets.only(top: 0.0),
            itemBuilder: (_, index) => HoldingItem(
              holding: holdings[index],
            ),
          ),
        ),
      ],
    );
  }
}
