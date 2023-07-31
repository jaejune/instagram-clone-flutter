import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/app_router.dart';
import 'package:instagram_clone/global.dart';
import 'package:instagram_clone/models/post.dart';

class HomeController extends GetxController {
 

  final profileList = RxList(fakeProfileList);
  final postList = RxList(fakePostList);

  void updateLike(int index) {
    HapticFeedback.selectionClick();
    postList[index] = postList[index].copyWith(isLike: !postList[index].isLike);
  }

  void toProfile(BuildContext context) {
    context.pushNamed(AppRouter.profile);
  }
}
