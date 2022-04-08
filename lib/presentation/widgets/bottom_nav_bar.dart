import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';
import '../../core/utils/extensions.dart';

const double iconSize = 25.0;

class BottomNavBar extends StatefulWidget {
  final bool isBuyersMenu;
  final Function(int) onNavItemClicked;

  const BottomNavBar(
      {Key? key, this.isBuyersMenu = false, required this.onNavItemClicked})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10.0,
      selectedItemColor: primaryDarkColor,
      unselectedItemColor: primaryTextColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: _currentSelectedIndex,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 1.8,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 1.8,
      ),
      selectedFontSize: 14.0,
      unselectedFontSize: 14.0,
      selectedIconTheme: const IconThemeData(size: iconSize),
      unselectedIconTheme: const IconThemeData(size: iconSize),
      type: BottomNavigationBarType.fixed,
      onTap: (int i) {
        setState(() => _currentSelectedIndex = i);

        widget.onNavItemClicked(i);
      },
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.bookmark,
            size: 6.0.wp,
          ),
          label: 'Watchlist',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.book,
            size: 6.0.wp,
          ),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.suitcase,
            size: 6.0.wp,
          ),
          label: 'Portfolio',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.wrench,
            size: 6.0.wp,
          ),
          label: 'Tools',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.user,
            size: 6.0.wp,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
