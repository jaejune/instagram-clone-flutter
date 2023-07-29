import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/app_router.dart';
import 'package:instagram_clone/global.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/models/profile.dart';

class HomeController extends GetxController {
  final storyList = [
    Profile(nickname: '겸돌이', avatar: 'profile1.jpeg'),
    Profile(nickname: '기름이', avatar: 'profile2.jpeg'),
    Profile(nickname: '햇시', avatar: 'profile3.jpeg'),
    Profile(nickname: '뿌리', avatar: 'profile4.jpeg'),
  ];

  final postList = RxList(fakePostList);

  void updateLike(int index) {
    HapticFeedback.selectionClick();
    postList[index] = postList[index].copyWith(isLike: !postList[index].isLike);
  }

  void toProfile(BuildContext context) {
    context.pushNamed(AppRouter.profile);
  }
}
