import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/widgets/no_orders.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';
import 'package:persuit/presentation/widgets/secondary_text_button.dart';

import '../../../../core/utils/extensions.dart';

class Positions extends StatelessWidget {
  const Positions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        OverlayedBox(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0.wp, vertical: 3.0.wp),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(2, 2),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'No Positions',
                style: textTheme.subtitle2,
              ),
            ),
          ),
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
            title: 'No positions',
            bodyText: 'Place and order from your watchlist',
          ),
        ),
      ],
    );
  }
}