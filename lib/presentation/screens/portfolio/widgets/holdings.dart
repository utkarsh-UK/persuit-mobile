import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/screens/portfolio/widgets/portfolio_summary.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';
import 'package:persuit/presentation/widgets/secondary_text_button.dart';

import '../../../../core/utils/extensions.dart';

class Holdings extends StatelessWidget {
  const Holdings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const OverlayedBox(
          totalSize: 45,
          backgroundHeight: 22,
          dividingFactor: 4.5,
          child: PortfolioSummary(),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.0.wp),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SecondaryTextButton(
                buttonText: 'Filter',
                icon: FontAwesomeIcons.sliders,
              ),
              SecondaryTextButton(
                buttonText: 'Analytics',
                icon: FontAwesomeIcons.circleNotch,
              ),
            ],
          ),
        ),
        Divider(
          color: inputBorderColor,
          thickness: 0.4.wp,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => Divider(
              color: inputBorderColor,
              thickness: 0.4.wp,
            ),
            padding: const EdgeInsets.only(top: 0.0),
            itemBuilder: (_, index) => Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 6.0.wp, vertical: 1.5.wp),
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
          ),
        ),
      ],
    );
  }
}
