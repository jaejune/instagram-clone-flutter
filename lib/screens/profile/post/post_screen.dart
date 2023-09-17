import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_icons.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/third-party/dismissble/dismissible_page.dart';
import 'package:instagram_clone/widgets/buttons.dart';
import 'package:instagram_clone/widgets/post_widget.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key, required this.post});
  final Post post;
  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  Widget _appBar(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        height: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '동글동글이',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: context.subText),
                ),
                const Text(
                  '게시물',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(InstaIcons.arrowLeft)),
                DefaultTextButton(
                  text: '팔로우',
                  onPressed: () {},
                )
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () {
        Navigator.of(context).pop();
      },
      minRadius: 50,
      direction: DismissiblePageDismissDirection.multi,
      isFullScreen: true,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            _appBar(context),
            PostWidget(
                post: widget.post, onPressLike: () {}, onPressProfile: () {})
          ],
        )),
      ),
    );
  }
}
