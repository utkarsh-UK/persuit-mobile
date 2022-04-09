import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/extensions.dart';

class NoOrders extends StatelessWidget {
  final String title;
  final String bodyText;

  const NoOrders({
    Key? key,
    required this.title,
    required this.bodyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0.wp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.45,
            height: size.width * 0.3,
            child: const Image(
              image: AssetImage('assets/images/no-orders.png'),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.0.wp),
          Text(
            title,
            style: textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 3.0.wp),
          SizedBox(
            width: size.width * 0.5,
            child: Text(
              bodyText,
              style: textTheme.bodyText2!.copyWith(
                fontSize: 12.0.sp,
                color: bodyTextColor.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
