import 'package:get/get.dart';
import 'package:instagram_clone/models/profile.dart';

class UserService extends GetxService {
  final profile = Profile(avatar: 'profile.jpeg', nickname: '동글동글이').obs;
}
