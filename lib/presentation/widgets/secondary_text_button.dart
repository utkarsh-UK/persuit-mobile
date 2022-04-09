import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/extensions.dart';

class SecondaryTextButton extends StatelessWidget {
  final String buttonText;
  final IconData icon;

  const SecondaryTextButton({
    Key? key,
    required this.buttonText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextButton.icon(
      onPressed: null,
      icon: FaIcon(icon, size: 4.0.wp, color: primaryDarkColor),
      label: Text(
        buttonText,
        style: textTheme.subtitle2!.copyWith(
          color: primaryDarkColor,
          fontSize: 10.0.sp,
        ),
      ),
    );
  }
}
