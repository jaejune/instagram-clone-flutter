import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_router/go_router.dart';

import 'package:instagram_clone/gen/assets.gen.dart';
import 'package:instagram_clone/insta_icons.dart';
import 'package:instagram_clone/screens/navigation/navigation_controller.dart';
import 'package:instagram_clone/theme.dart';

class NavigationScreen extends GetView<NavigationController> {
  const NavigationScreen({super.key, required this.navigatorShell});

  final StatefulNavigationShell navigatorShell;

  Widget _bottomNavBar(
    BuildContext context, {
    required Function() onTap,
    required IconData active,
    required IconData deactive,
    required int index,
  }) {
    return Expanded(
        child: GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: Icon(
                index == navigatorShell.currentIndex ? active : deactive)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            color: context.background,
            border: Border(top: BorderSide(color: context.border, width: 0.5))),
        height: 55,
        child: Row(
          children: [
            _bottomNavBar(
              context,
              onTap: () => navigatorShell.goBranch(0,
                  initialLocation: 0 == navigatorShell.currentIndex),
              index: 0,
              active: InstaIcons.homeFill,
              deactive: InstaIcons.home,
            ),
            _bottomNavBar(
              context,
              onTap: () => navigatorShell.goBranch(1,
                  initialLocation: 1 == navigatorShell.currentIndex),
              index: 1,
              active: InstaIcons.feedFill,
              deactive: InstaIcons.feed,
            ),
            _bottomNavBar(
              context,
              onTap: () => navigatorShell.goBranch(2,
                  initialLocation: 2 == navigatorShell.currentIndex),
              index: 2,
              active: InstaIcons.reelsFill,
              deactive: InstaIcons.reels,
            ),
            _bottomNavBar(
              context,
              onTap: () => navigatorShell.goBranch(3,
                  initialLocation: 3 == navigatorShell.currentIndex),
              index: 3,
              active: InstaIcons.shopFill,
              deactive: InstaIcons.shop,
            ),
            Expanded(
                child: GestureDetector(
                    onTap: () => navigatorShell.goBranch(4,
                        initialLocation: 4 == navigatorShell.currentIndex),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Visibility(
                            visible: 4 == navigatorShell.currentIndex,
                            child: Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: context.text),
                            )),
                        ClipOval(
                          child: SizedBox(
                              width: 24,
                              height: 24,
                              child: Assets.images.profile
                                  .image(fit: BoxFit.cover)),
                        )
                      ],
                    )))
          ],
        ),
      )),
      body: SafeArea(
        
        child: navigatorShell),
    );
  }
}
