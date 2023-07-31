import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MypageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(vsync: this, length: 3);

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
