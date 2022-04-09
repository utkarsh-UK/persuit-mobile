import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/widgets/overlayed_search_box.dart';
import 'package:persuit/presentation/widgets/user_avatar.dart';

import '../../../../core/utils/extensions.dart';

const List<Map<String, dynamic>> _settings = [
  {'name': 'Funds', 'icon': FontAwesomeIcons.indianRupeeSign},
  {'name': 'Profile', 'icon': FontAwesomeIcons.user},
  {'name': 'Settings', 'icon': FontAwesomeIcons.gear},
  {'name': 'Console', 'icon': FontAwesomeIcons.circleNotch},
  {'name': 'Connected apps', 'icon': FontAwesomeIcons.box},
  {'name': 'Invite friends', 'icon': FontAwesomeIcons.userPlus},
  {'name': 'Support', 'icon': FontAwesomeIcons.circleInfo},
  {'name': 'User manual', 'icon': FontAwesomeIcons.circleQuestion},
  {'name': 'Licenses', 'icon': FontAwesomeIcons.file},
  {'name': 'Logout', 'icon': FontAwesomeIcons.arrowRightFromBracket},
];

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        OverlayedBox(
          totalSize: 45,
          backgroundHeight: 22,
          dividingFactor: 4.5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0.wp, vertical: 3.0.wp),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(2, 2),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'GT5102\n',
                        style: textTheme.headline6!.copyWith(
                          fontSize: 16.0.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'utkarshkore98@gmail.com',
                        style: textTheme.subtitle2!.copyWith(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w400,
                          color: bodyTextColor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                const UserAvatar(radius: 12.0),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: _settings.length,
            separatorBuilder: (_, __) => Divider(
              color: inputBorderColor,
              thickness: 0.4.wp,
            ),
            padding: const EdgeInsets.only(top: 0.0),
            itemBuilder: (_, index) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0.wp,
                vertical: 6.0.wp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _settings[index]['name'],
                    style: textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0.sp,
                    ),
                  ),
                  FaIcon(
                    _settings[index]['icon'],
                    size: 5.0.wp,
                    color: iconColor.withOpacity(0.7),
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
