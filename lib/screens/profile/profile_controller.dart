import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/screens/profile/post/post_screen.dart';
import 'package:instagram_clone/third-party/dismissble/dismissible_page.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(vsync: this, length: 3);

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void toPost(BuildContext context, Post post) {
    context.pushTransparentRoute(PostScreen(post: post));
  }
}
