import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persuit/core/theme/colors.dart';

import '../../core/utils/extensions.dart';

class CustomSliverContent extends StatefulWidget {
  final String appBarTitle;
  final int tabCount;
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final bool isTabScrollable;

  const CustomSliverContent({
    Key? key,
    required this.appBarTitle,
    required this.tabCount,
    required this.tabs,
    required this.tabViews,
    this.isTabScrollable = false,
  }) : super(key: key);

  @override
  State<CustomSliverContent> createState() => _CustomSliverContentState();
}

class _CustomSliverContentState extends State<CustomSliverContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: widget.tabCount, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          title: Text(widget.appBarTitle, style: textTheme.headline4),
          floating: true,
          pinned: true,
          snap: true,
          elevation: 0,
          expandedHeight: 120,
          toolbarHeight: 100,
          flexibleSpace: Container(
            color: sliverBackgroundColor,
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: null,
              icon: const FaIcon(
                FontAwesomeIcons.angleDown,
                color: iconColor,
              ),
              iconSize: 10.wp,
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            labelStyle: textTheme.subtitle2!.copyWith(
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: textTheme.subtitle2!.copyWith(
              fontWeight: FontWeight.w500,
            ),
            labelColor: primaryDarkColor,
            unselectedLabelColor: primaryTextColor,
            indicatorColor: primaryDarkColor,
            isScrollable: widget.isTabScrollable,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3.0,
                color: primaryDarkColor,
              ),
            ),
            tabs: widget.tabs,
          ),
        ),
      ],
      body: TabBarView(
        controller: _tabController,
        children: widget.tabViews,
      ),
    );
  }
}