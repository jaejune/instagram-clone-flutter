import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/screens/feed/feed_controller.dart';
import 'package:instagram_clone/screens/feed/feed_screen.dart';
import 'package:instagram_clone/screens/home/home_controller.dart';
import 'package:instagram_clone/screens/home/home_screen.dart';
import 'package:instagram_clone/screens/mypage/mypage_controller.dart';
import 'package:instagram_clone/screens/mypage/mypage_screen.dart';
import 'package:instagram_clone/screens/navigation/navigation_controller.dart';
import 'package:instagram_clone/screens/navigation/navigation_screen.dart';
import 'package:instagram_clone/screens/profile/profile_controller.dart';
import 'package:instagram_clone/screens/profile/profile_screen.dart';
import 'package:instagram_clone/screens/reels/reels_controller.dart';
import 'package:instagram_clone/screens/reels/reels_screen.dart';
import 'package:instagram_clone/screens/shop/shop_controller.dart';
import 'package:instagram_clone/screens/shop/shop_screen.dart';

class AppRouter {
  static const home = 'home';
  static const feed = 'feed';
  static const reels = 'reels';
  static const shop = 'shop';
  static const mypage = 'mypage';
  static const profile = 'profile';

  static final router =
      GoRouter(initialLocation: '/home', navigatorKey: Get.key, routes: [
    GoRoute(
      parentNavigatorKey: Get.key,
      path: '/profile',
      name: profile,
      builder: (context, state) => GetBuilder(
        init: ProfileController(),
        builder: (controller) => const ProfileScreen(),
      ),
    ),
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => GetBuilder(
              init: NavigationController(),
              builder: (controller) => NavigationScreen(
                navigatorShell: navigationShell,
              ),
            ),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/home',
                name: home,
                pageBuilder: (context, state) => NoTransitionPage(
                        child: GetBuilder(
                      init: HomeController(),
                      builder: (controller) => const HomeScreen(),
                    ))),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/feed',
                name: feed,
                pageBuilder: (context, state) => NoTransitionPage(
                        child: GetBuilder(
                      init: FeedController(),
                      builder: (controller) => const FeedScreen(),
                    ))),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/reels',
                name: reels,
                pageBuilder: (context, state) => NoTransitionPage(
                        child: GetBuilder(
                      init: ReelsController(),
                      builder: (controller) => const ReelsScreen(),
                    ))),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/shop',
                name: shop,
                pageBuilder: (context, state) => NoTransitionPage(
                        child: GetBuilder(
                      init: ShopController(),
                      builder: (controller) => const ShopScreen(),
                    ))),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                path: '/mypage',
                name: mypage,
                pageBuilder: (context, state) => NoTransitionPage(
                        child: GetBuilder(
                      init: MypageController(),
                      builder: (controller) => const MypageScreen(),
                    ))),
          ]),
        ])
  ]);
}
