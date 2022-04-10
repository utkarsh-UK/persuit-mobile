import 'package:flutter/material.dart';
import 'package:persuit/presentation/widgets/no_orders.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';

class Baskets extends StatelessWidget {
  const Baskets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: const [
        OverlayedBox(hintText: 'Search basket name'),
        Expanded(
          child: NoOrders(
            title: 'No baskets',
            bodyText: 'Create a basket',
          ),
        ),
      ],
    );
  }
}
