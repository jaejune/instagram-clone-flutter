import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app_router.dart';
import 'package:instagram_clone/services/user_service.dart';
import 'package:instagram_clone/theme.dart';

void main() {
  Get.put(UserService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routerDelegate: AppRouter.router.routerDelegate,
      backButtonDispatcher: AppRouter.router.backButtonDispatcher,
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      title: 'Instagram Clone',
    );
  }
}
