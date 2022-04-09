import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/orders/widgets/executed_orders.dart';
import 'package:persuit/presentation/screens/orders/widgets/gtt_orders.dart';
import 'package:persuit/presentation/screens/orders/widgets/open_orders.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSliverContent(
      key: UniqueKey(),
      appBarTitle: 'Orders',
      hideTabs: false,
      tabCount: 3,
      tabs: const [
        Tab(text: 'Open'),
        Tab(text: 'Executed'),
        Tab(text: 'GTT'),
      ],
      tabViews: const [
        OpenOrders(),
        ExecutedOrders(),
        GttOrders(),
      ],
    );
  }
}
