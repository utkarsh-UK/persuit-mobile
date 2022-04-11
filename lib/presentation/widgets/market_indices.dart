import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/screens/home/controller.dart';

import '../../core/utils/extensions.dart';

class MarketIndices extends StatelessWidget {
  final HomeController _homeController = Get.find<HomeController>();

  MarketIndices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Overview', style: textTheme.headline4),
                IconButton(
                  onPressed: () => _homeController.setShowIndices(false),
                  icon: const FaIcon(
                    FontAwesomeIcons.xmark,
                    color: iconColor,
                  ),
                  iconSize: 10.wp,
                ),
              ],
            ),
            SizedBox(height: 3.0.wp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIndiceInfo(
                  textTheme: textTheme,
                  indiceName: 'NIFTY 50',
                  indiceValue: '17725.06',
                  dayChange: '-59.80',
                  perChange: '-0.29%',
                ),
                _buildIndiceInfo(
                  textTheme: textTheme,
                  indiceName: 'NIFTY 50',
                  indiceValue: '17725.06',
                  dayChange: '-59.80',
                  perChange: '-0.29%',
                ),
              ],
            ),
            SizedBox(height: 3.0.wp),
            Text(
              '* Charts indicate 52 weeks trend',
              style: textTheme.subtitle2!.copyWith(
                color: bodyTextColor.withOpacity(0.7),
                fontSize: 12.0.sp,
              ),
            ),
            SizedBox(height: 2.0.wp),
            Divider(color: inputBorderColor, thickness: 0.4.wp),
            SizedBox(height: 3.0.wp),
            Text(
              'Funds',
              style: textTheme.headline6!.copyWith(fontSize: 14.0.sp),
            ),
            SizedBox(height: 3.0.wp),
            Text(
              'Equity',
              style: textTheme.subtitle2!.copyWith(
                color: bodyTextColor.withOpacity(0.7),
                fontSize: 12.0.sp,
              ),
            ),
            SizedBox(height: 1.5.wp),
            Text(
              '₹3,811.30',
              style: textTheme.headline6!.copyWith(
                fontSize: 14.0.sp,
              ),
            ),
            SizedBox(height: 2.0.wp),
          ],
        ),
      ),
    );
  }

  Widget _buildIndiceInfo({
    required TextTheme textTheme,
    required String indiceName,
    required String indiceValue,
    required String dayChange,
    required String perChange,
  }) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            indiceName,
            style: textTheme.headline6!.copyWith(
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            indiceValue,
            style: textTheme.headline6!.copyWith(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          SizedBox(height: 2.0.wp),
          Padding(
            padding: EdgeInsets.only(right: 15.0.wp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  dayChange,
                  style: textTheme.subtitle2!.copyWith(
                    color: negativeColor,
                    fontSize: 12.0.sp,
                  ),
                ),
                const Spacer(),
                Text(
                  perChange,
                  style: textTheme.subtitle2!.copyWith(
                    color: negativeColor,
                    fontSize: 12.0.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
