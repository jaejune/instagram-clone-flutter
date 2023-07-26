import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:instagram_clone/models/profile.dart';

class HomeController extends GetxController {
  final storyList = [
    Profile(nickname: 'sabanok...', avatar: 'profile1.jpeg'),
    Profile(nickname: 'blue_bouy', avatar: 'profile2.jpeg'),
    Profile(nickname: 'waggles', avatar: 'profile3.jpeg'),
    Profile(nickname: 'steve.loves', avatar: 'profile4.jpeg'),
  ];
}
