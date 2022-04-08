import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';

import '../../../../core/utils/extensions.dart';

class WatchList extends StatelessWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        OverlayedSearchBox(child: buildFloating(textTheme)),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (_, __) => Divider(
              color: inputBorderColor,
              thickness: 0.4.wp,
            ),
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

  Widget buildFloating(TextTheme textTheme) => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(2, 2),
              blurRadius: 6.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: TextFormField(
          style: textTheme.subtitle1!.copyWith(
            fontSize: 12.0.sp,
            color: sliverBackgroundColor.withOpacity(0.6),
          ),
          maxLength: 50,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: backgroundColor,
            counterText: '',
            hintText: 'Search & add',
            hintStyle: textTheme.subtitle1!.copyWith(
              fontSize: 12.0.sp,
              color: bodyTextColor.withOpacity(0.7),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 6.0.wp,
              vertical: 3.0.wp,
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4.0.wp,
                horizontal: 3.0.wp,
              ),
              child: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: iconColor.withOpacity(0.4),
                size: 5.0.wp,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4.0.wp,
                horizontal: 3.0.wp,
              ),
              child: Text(
                '6/50',
                style: textTheme.subtitle1!.copyWith(
                  fontSize: 12.0.sp,
                  color: bodyTextColor.withOpacity(0.7),
                ),
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: inputBorderColor,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: inputBorderColor,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: inputBorderColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade300),
            ),
          ),
        ),
      );
}
