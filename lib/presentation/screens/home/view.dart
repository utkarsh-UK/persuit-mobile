import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/extensions.dart';
import 'package:persuit/presentation/screens/home/controller.dart';
import 'package:persuit/presentation/screens/orders/view.dart';
import 'package:persuit/presentation/screens/portfolio/view.dart';
import 'package:persuit/presentation/screens/profile/view.dart';
import 'package:persuit/presentation/screens/tools/view.dart';
import 'package:persuit/presentation/screens/watchlist/view.dart';
import 'package:persuit/presentation/widgets/bottom_nav_bar.dart';
import 'package:persuit/presentation/widgets/market_indices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _homeController = Get.find<HomeController>();

  late List<Widget> _navigationScreens;

  int _currentNavIndex = 0;

  @override
  void initState() {
    super.initState();

    _navigationScreens = [
      const WatchlistTab(),
      const OrdersTab(),
      const PortfolioTab(),
      const ToolsTab(),
      const ProfileTab(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onNavItemClicked: (int index) =>
            setState(() => _currentNavIndex = index),
      ),
      persistentFooterButtons: _currentNavIndex != 2
          ? null
          : [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today\'s P&L',
                    style: textTheme.headline6!.copyWith(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '+746.64 +0.80 %',
                    style: textTheme.headline6!.copyWith(
                      fontSize: 12.0.sp,
                      color: positiveColor,
                    ),
                  ),
                ],
              ),
            ],
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Obx(
            () => Column(
              children: [
                AnimatedCrossFade(
                  crossFadeState: _homeController.showIndices.value
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 400),
                  firstCurve: Curves.easeInOutCubic,
                  secondCurve: Curves.easeInToLinear,
                  firstChild: MarketIndices(),
                  secondChild: const SizedBox.shrink(),
                  reverseDuration: const Duration(milliseconds: 200),
                ),
                Expanded(
                  child: AnimatedOpacity(
                    opacity: _homeController.showIndices.value ? 0.3 : 1.0,
                    duration: const Duration(milliseconds: 400),
                    child: _navigationScreens[_currentNavIndex],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
