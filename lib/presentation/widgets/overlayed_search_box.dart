import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';

import '../../core/utils/extensions.dart';

class OverlayedBox extends StatelessWidget {
  final double totalSize;
  final double backgroundHeight;
  final Widget? child;
  final String hintText;
  final bool isWordLimitVisible;
  final double dividingFactor;

  const OverlayedBox({
    Key? key,
    this.totalSize = 20,
    this.backgroundHeight = 10,
    this.child,
    this.hintText = 'Search & add',
    this.isWordLimitVisible = false,
    this.dividingFactor = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final top = totalSize / 2 - dividingFactor.wp;

    return SizedBox(
      height: totalSize.wp,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: backgroundHeight.wp,
            color: sliverBackgroundColor,
          ),
          Positioned(
            top: top.wp,
            left: 20,
            right: 20,
            child: child ??
                SearchStocksField(
                  hintText: hintText,
                  isWordLimitVisible: isWordLimitVisible,
                ),
          ),
        ],
      ),
    );
  }
}

class SearchStocksField extends StatelessWidget {
  final String hintText;
  final bool isWordLimitVisible;

  const SearchStocksField({
    Key? key,
    required this.hintText,
    this.isWordLimitVisible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
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
          hintText: hintText,
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
          suffixIcon: isWordLimitVisible
              ? Padding(
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
                )
              : null,
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
}
