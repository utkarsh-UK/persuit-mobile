import 'package:flutter/material.dart';
import 'package:persuit/presentation/screens/profile/profile_details.dart';
import 'package:persuit/presentation/widgets/custom_sliver_content.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSliverContent(
      appBarTitle: 'Account',
      hideTabs: true,
      child: ProfileDetails(),
    );
  }
}
