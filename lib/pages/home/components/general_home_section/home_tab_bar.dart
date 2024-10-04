import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kPrimaryColor),
      dividerColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      labelColor: kWhiteColor,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      controller: _tabController,
      tabs: [
        Tab(
          text: 'Location',
        ),
        Tab(text: 'Hotels'),
        Tab(text: 'Food'),
        Tab(text: 'Adventure'),
      ],
    );
  }
}
