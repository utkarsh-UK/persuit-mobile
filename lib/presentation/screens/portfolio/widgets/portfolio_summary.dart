import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/extensions.dart';

class PortfolioSummary extends StatelessWidget {
  const PortfolioSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invested',
                      style: textTheme.subtitle1!.copyWith(
                        color: bodyTextColor.withOpacity(0.6),
                        fontSize: 12.0.sp,
                      ),
                    ),
                    Text(
                      '85,473.20',
                      style: textTheme.headline6,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current',
                      style: textTheme.subtitle1!.copyWith(
                        color: bodyTextColor.withOpacity(0.6),
                        fontSize: 12.0.sp,
                      ),
                    ),
                    Text(
                      '92,810.29',
                      style: textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.0.wp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.wp),
            child: Divider(
              color: inputBorderColor,
              thickness: 0.4.wp,
            ),
          ),
          SizedBox(height: 2.0.wp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'P&L',
                  style: textTheme.subtitle1!.copyWith(
                    color: bodyTextColor.withOpacity(0.6),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  '+7,337.09 +8.58 %',
                  style: textTheme.headline6!.copyWith(
                    color: positiveColor,
                    fontSize: 14.0.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
