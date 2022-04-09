import 'package:flutter/material.dart';
import 'package:persuit/presentation/widgets/no_orders.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';

class GttOrders extends StatelessWidget {
  const GttOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: const [
        OverlayedBox(hintText: 'Search eg: infy, reliance'),
        Expanded(
          child: NoOrders(
            title: 'No GTTs',
            bodyText: 'Create GTT from watchlist',
          ),
        ),
      ],
    );
  }
}
