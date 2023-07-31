import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(vsync: this, length: 3);
      
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
