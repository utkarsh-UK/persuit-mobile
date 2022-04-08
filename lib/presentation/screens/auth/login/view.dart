import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/screens/home/view.dart';
import 'package:persuit/presentation/widgets/custom_app_bar.dart';
import 'package:persuit/presentation/widgets/scaffold_container.dart';
import 'package:persuit/presentation/widgets/user_avatar.dart';
import '../../../../core/utils/extensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ScaffoldContainer(
      children: [
        const CustomAppBar(),
        SizedBox(height: 10.0.hp),
        const UserAvatar(),
        SizedBox(height: 5.0.wp),
        Text(
          'Utkarsh Appasaheb Kore',
          style: textTheme.headline5,
        ),
        SizedBox(height: 1.0.wp),
        Text(
          'GT5102',
          style: textTheme.subtitle2!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 3.5.wp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.wp, vertical: 3.0.wp),
          child: TextField(
            style: textTheme.bodyText2,
            keyboardType: TextInputType.number,
            maxLength: 6,
            decoration: InputDecoration(
              counterText: '',
              filled: true,
              fillColor: backgroundColor,
              hintText: 'Enter PIN',
              hintStyle: textTheme.bodyText2!.copyWith(fontSize: 16.0.sp),
              suffixIcon: const Icon(
                Icons.arrow_forward,
                color: Color(0xFF3B7FEF),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 5.0.wp,
                vertical: 4.0.wp,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: inputBorderColor),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: inputBorderColor),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: inputBorderColor),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade300),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0.wp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
          child: SizedBox(
            width: Get.width,
            child: TextButton.icon(
              onPressed: () => Get.to(() => const HomeScreen()),
              style: TextButton.styleFrom(
                backgroundColor: backgroundColor,
                side: const BorderSide(
                  width: 1.2,
                  color: primaryDarkColor,
                ),
              ),
              icon: const Icon(Icons.fingerprint_outlined),
              label: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.5.wp),
                child: Text(
                  'Login with Fingerprint',
                  style: textTheme.button!.copyWith(
                    color: primaryDarkColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 2.5.wp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Switch account',
                style: textTheme.button!.copyWith(
                  color: primaryDarkColor,
                  fontSize: 12.0.sp,
                ),
              ),
              Text(
                'Forgot PIN?',
                style: textTheme.button!.copyWith(
                  color: primaryDarkColor,
                  fontSize: 12.0.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.0.wp),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
            child: TextButton.icon(
              onPressed: null,
              icon: SizedBox(
                width: 8.0.wp,
                height: 8.0.wp,
                child: const ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.grey, BlendMode.saturation),
                  child: Image(
                    image: AssetImage('assets/images/zerodha-logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              label: Text(
                'Zerodha'.toUpperCase(),
                style: textTheme.bodyText2!.copyWith(fontSize: 14.0.sp),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
            child: Text(
              'NSE & BSE - SEBI Registration no.: INZ000031633 |',
              style: textTheme.subtitle2!.copyWith(fontSize: 10.0.sp),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
            child: Text(
              'MCX - SEBI Registration no.: INZ000038238 | CDSL -',
              style: textTheme.subtitle2!.copyWith(fontSize: 10.0.sp),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
            child: Text(
              'SEBI Registration no.: IN-DP-431-2019',
              style: textTheme.subtitle2!.copyWith(fontSize: 10.0.sp),
            ),
          ),
        ),
        SizedBox(height: 8.0.wp),
      ],
    );
  }
}
