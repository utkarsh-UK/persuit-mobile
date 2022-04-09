import 'package:flutter/material.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/core/utils/extensions.dart';
import 'package:persuit/presentation/screens/orders/view.dart';
import 'package:persuit/presentation/screens/portfolio/view.dart';
import 'package:persuit/presentation/screens/profile/view.dart';
import 'package:persuit/presentation/screens/tools/view.dart';
import 'package:persuit/presentation/screens/watchlist/view.dart';
import 'package:persuit/presentation/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Widget> _navigationScreens;

  bool _showIndices = false;
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
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                width: size.width,
                height: _showIndices ? size.height * 0.3 : 0.0,
                color: Colors.redAccent,
              ),
              Expanded(
                child: AnimatedOpacity(
                  opacity: _showIndices ? 0.3 : 1.0,
                  duration: const Duration(milliseconds: 400),
                  child: _navigationScreens[_currentNavIndex],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
