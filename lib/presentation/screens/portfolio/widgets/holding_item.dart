import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/domain/entities/holding.dart';

import '../../../../core/utils/extensions.dart';

class HoldingItem extends StatelessWidget {
  final Holding holding;
  const HoldingItem({Key? key, required this.holding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final String directionSign = holding.isInProfit ? "+" : "-";
    final String todaysDirectionSign = holding.stock.isUptrend ? "+" : "-";

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
                    value: '${holding.quantity}',
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
                    unit: holding.avgPrice.toStringAsFixed(2),
                  ),
                ],
              ),
              Text(
                holding.stock.name.toUpperCase(),
                style: textTheme.bodyText2!.copyWith(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w400,
                  height: 2.0,
                ),
              ),
              _buildInfoWidget(
                textTheme: textTheme,
                value: 'Invested',
                unit: holding.totalInvested.toStringAsFixed(2),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$directionSign${holding.overallProfitPercentage}%',
                style: textTheme.subtitle2!.copyWith(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w400,
                  color: positiveColor,
                ),
              ),
              Text(
                '$directionSign${holding.overallProfitPrice}',
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
                unit: holding.stock.latestPrices.toStringAsFixed(2),
                shouldShowPL: true,
                ltpWithPL: '$todaysDirectionSign${holding.stock.percentChange}',
              ),
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
