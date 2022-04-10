import 'package:flutter/material.dart';
import 'package:persuit/presentation/widgets/no_orders.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';

class Alerts extends StatelessWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: const [
        OverlayedBox(hintText: 'Search alert'),
        Expanded(
          child: NoOrders(
            title: 'No alerts',
            bodyText: 'Create new alert',
          ),
        ),
      ],
    );
  }
}
