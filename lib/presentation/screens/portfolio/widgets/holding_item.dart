import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';

import '../../../../core/utils/extensions.dart';

class HoldingItem extends StatelessWidget {
  const HoldingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0.wp, vertical: 1.5.wp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildInfoWidget(
                    textTheme: textTheme,
                    value: '7',
                    unit: 'Qty.',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 1.5.wp),
                    width: 1.2.wp,
                    height: 1.2.wp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: bodyTextColor,
                    ),
                  ),
                  _buildInfoWidget(
                    textTheme: textTheme,
                    value: 'Avg.',
                    unit: '645.20',
                  ),
                ],
              ),
              Text(
                'BHARTIARTL'.toUpperCase(),
                style: textTheme.bodyText2!.copyWith(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w400,
                  height: 2.0,
                ),
              ),
              _buildInfoWidget(
                textTheme: textTheme,
                value: 'Invested',
                unit: '4516.40',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '+18.16%',
                style: textTheme.subtitle2!.copyWith(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w400,
                  color: positiveColor,
                ),
              ),
              Text(
                '+820.40',
                style: textTheme.subtitle2!.copyWith(
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                  color: positiveColor,
                  // height: 2.0,
                ),
              ),
              _buildInfoWidget(
                  textTheme: textTheme,
                  value: 'LTP',
                  unit: '762.40',
                  shouldShowPL: true,
                  ltpWithPL: '-1.71'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoWidget({
    required TextTheme textTheme,
    required String value,
    required String unit,
    bool shouldShowPL = false,
    String? ltpWithPL,
  }) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$value ',
            style: textTheme.subtitle2!.copyWith(
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w400,
              color: bodyTextColor.withOpacity(0.6),
            ),
          ),
          TextSpan(
            text: unit,
            style: textTheme.subtitle2!.copyWith(
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w400,
              color: primaryTextColor.withOpacity(0.9),
            ),
          ),
          if (shouldShowPL)
            TextSpan(
              text: ' (${ltpWithPL ?? ' '}%)',
              style: textTheme.subtitle2!.copyWith(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w400,
                color: negativeColor,
              ),
            ),
        ],
      ),
    );
  }
}
