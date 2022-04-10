import 'package:flutter/material.dart';
import 'package:persuit/presentation/widgets/no_orders.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';

class SIPs extends StatelessWidget {
  const SIPs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: const [
        OverlayedBox(hintText: 'Search SIP'),
        Expanded(
          child: NoOrders(
            title: 'No SIPs',
            bodyText: 'Create a SIP',
          ),
        ),
      ],
    );
  }
}
