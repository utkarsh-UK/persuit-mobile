import 'package:flutter/material.dart';

import 'package:persuit/core/theme/colors.dart';
import '../../core/utils/extensions.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.wp, vertical: 3.wp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.arrow_back,
              color: iconColor,
              size: 10.0.wp,
            ),
          ),
          SizedBox(
            width: 15.wp,
            height: 15.wp,
            child: const Image(
              image: AssetImage('assets/images/persuit-trans.png'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
