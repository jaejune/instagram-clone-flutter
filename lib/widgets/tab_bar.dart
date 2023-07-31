import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class DefaultTabBar extends StatelessWidget {
  const DefaultTabBar(
      {super.key,
      this.onTap,
      required this.controller,
      required this.tabs,
      this.isScrollable = true,
      this.indicatorPadding});
  final Function(int index)? onTap;
  final TabController controller;
  final List<Widget> tabs;
  final bool isScrollable;
  final EdgeInsets? indicatorPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.background,
      height: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: context.border, width: 0.5)),
        ),
        child: TabBar(
            onTap: onTap,
            indicatorWeight: 1,
            indicatorColor: context.text,
            labelPadding: EdgeInsets.zero,
            labelColor: context.text,
            unselectedLabelColor: const Color(0xFFC4C4C4),
            unselectedLabelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Pretendard'),
            labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Pretendard'),
            controller: controller,
            tabs: tabs),
      ),
    );
  }
}
