import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import '../../core/utils/extensions.dart';

class UserAvatar extends StatelessWidget {
  final double radius;

  const UserAvatar({Key? key, this.radius = 20.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CircleAvatar(
      radius: radius.wp,
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
