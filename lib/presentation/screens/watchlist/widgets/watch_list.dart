import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';

import '../../../../core/utils/extensions.dart';

class WatchList extends StatelessWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView.separated(
      itemCount: 17,
      separatorBuilder: (_, __) => Divider(
        color: inputBorderColor,
        thickness: 0.4.wp,
      ),
      itemBuilder: (_, index) => Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0.wp, vertical: 1.5.wp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'INFY\n'.toUpperCase(),
                    style: textTheme.bodyText2!.copyWith(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: 'NSE 3',
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
                    text: '1814.60\n',
                    style: textTheme.bodyText2!.copyWith(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: positiveColor,
                    ),
                  ),
                  TextSpan(
                    text: '+3.60 (+0.20%)',
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
      ),
    );
  }
}
