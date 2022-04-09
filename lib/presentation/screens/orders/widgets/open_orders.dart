import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/widgets/no_orders.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';
import 'package:persuit/presentation/widgets/secondary_text_button.dart';

import '../../../../core/utils/extensions.dart';

class OpenOrders extends StatelessWidget {
  const OpenOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const OverlayedBox(hintText: 'Search eg: infy, reliance'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.0.wp),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const  [
               SecondaryTextButton(
                buttonText: 'Filter',
                icon: FontAwesomeIcons.sliders,
              ),
               SecondaryTextButton(
                buttonText: 'Tradebook',
                icon: FontAwesomeIcons.circleNotch,
              ),
            ],
          ),
        ),
        Divider(
          color: inputBorderColor,
          thickness: 0.4.wp,
        ),
        const Expanded(
          child: NoOrders(
            title: 'No pending orders',
            bodyText: 'Place and order from your watchlist',
          ),
        ),
      ],
    );
  }
}
