import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:instagram_clone/models/profile.dart';

part 'post.g.dart';

@CopyWith()
class Post {
  String content;
  String image;
  bool isLike;
  Profile profile;
  Post({required this.content, this.isLike = false, required this.profile, required this.image});
}
