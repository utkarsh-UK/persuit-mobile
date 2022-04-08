import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import '../../core/utils/extensions.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CircleAvatar(
      radius: 20.0.wp,
      backgroundColor: iconBackgroundColor,
      child: Text(
        'UA',
        style: textTheme.headline3!.copyWith(
          fontWeight: FontWeight.w400,
          color: secondaryTextLightColor,
        ),
      ),
    );
  }
}
