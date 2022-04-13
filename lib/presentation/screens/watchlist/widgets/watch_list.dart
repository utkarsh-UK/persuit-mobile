import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/data.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';

import '../../../../core/utils/extensions.dart';

class WatchList extends StatelessWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const OverlayedBox(hintText: 'Search & add', isWordLimitVisible: true),
        Expanded(
          child: ListView.separated(
            itemCount: watchlistShares.length,
            separatorBuilder: (_, __) => Divider(
              color: inputBorderColor,
              thickness: 0.4.wp,
            ),
            padding: const EdgeInsets.only(top: 0.0),
            itemBuilder: (_, index) {
              final String directionSign =
                  watchlistShares[index].isUptrend ? '+' : '-';

              return Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 6.0.wp, vertical: 1.5.wp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${watchlistShares[index].name}\n'
                                .toUpperCase(),
                            style: textTheme.bodyText2!.copyWith(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: watchlistShares[index].exchangeName,
                            style: textTheme.subtitle2!.copyWith(
                              fontSize: 10.0.sp,
                              fontWeight: FontWeight.w400,
                              color: bodyTextColor.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '${watchlistShares[index].latestPrices.toStringAsFixed(2)}\n',
                            style: textTheme.bodyText2!.copyWith(
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              color: watchlistShares[index].isUptrend
                                  ? positiveColor
                                  : negativeColor,
                            ),
                          ),
                          TextSpan(
                            text:
                                '$directionSign${watchlistShares[index].dayChange}'
                                ' ($directionSign${watchlistShares[index].percentChange}%)',
                            style: textTheme.subtitle2!.copyWith(
                              fontSize: 11.0.sp,
                              fontWeight: FontWeight.w400,
                              color: bodyTextColor,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
