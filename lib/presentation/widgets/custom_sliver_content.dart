import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persuit/core/theme/colors.dart';
import 'package:persuit/presentation/screens/home/controller.dart';

import '../../core/utils/extensions.dart';

class CustomSliverContent extends StatefulWidget {
  final String appBarTitle;
  final bool hideTabs;
  final int tabCount;
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final bool isTabScrollable;
  final Widget? child;

  const CustomSliverContent({
    Key? key,
    required this.appBarTitle,
    this.tabCount = 0,
    this.tabs = const [],
    this.tabViews = const [],
    this.isTabScrollable = false,
    required this.hideTabs,
    this.child,
  }) : super(key: key);

  @override
  State<CustomSliverContent> createState() => _CustomSliverContentState();
}

class _CustomSliverContentState extends State<CustomSliverContent>
    with SingleTickerProviderStateMixin {
  final HomeController _homeController = Get.find<HomeController>();

  late TabController _tabController;
  late ScrollController _scrollController;

  bool _isScrolledUp = false;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: widget.tabCount, vsync: this);
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.hasClients &&
          _scrollController.offset > (200 - 60)) {
        setState(() => _isScrolledUp = true);
      } else {
        setState(() => _isScrolledUp = false);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          title: _isScrolledUp
              ? null
              : Text(widget.appBarTitle, style: textTheme.headline4),
          backgroundColor: widget.hideTabs ? sliverBackgroundColor : null,
          floating: true,
          pinned: true,
          snap: true,
          elevation: 0,
          expandedHeight: 120,
          toolbarHeight: widget.hideTabs ? 60 : 100,
          // flexibleSpace: Container(
          //   color: sliverBackgroundColor,
          // ),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.symmetric(
              horizontal: 4.0.wp,
              vertical: 5.0.wp,
            ),
            background: Container(
              color: sliverBackgroundColor,
            ),
            title: !widget.hideTabs
                ? null
                : Text(
                    'Utkarsh Appasaheb Kore',
                    style: textTheme.headline6!.copyWith(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
          ),
          automaticallyImplyLeading: false,
          actions: _isScrolledUp
              ? null
              : [
                  IconButton(
                    onPressed: () => _homeController.setShowIndices(true),
                    icon: const FaIcon(
                      FontAwesomeIcons.angleDown,
                      color: iconColor,
                    ),
                    iconSize: 10.wp,
                  ),
                ],
          bottom: widget.hideTabs
              ? null
              : TabBar(
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
      body: widget.hideTabs
          ? widget.child ?? Container()
          : TabBarView(
              controller: _tabController,
              children: widget.tabViews,
            ),
    );
  }
}
