import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/avatar_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post, required this.onPressLike, required this.onPressProfile});
  final Post post;
  final Function onPressLike;
  final Function onPressProfile;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () => onPressProfile(),
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(right: 13, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const AvatarWidget(size: 30, avatar: 'profile.jpeg'),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.profile.nickname,
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'Sponsored',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/more.svg',
                    color: context.text,
                  )
                ],
              ),
            )),
        SizedBox(
            height: Get.width,
            width: Get.width,
            child: Image.asset(
              'assets/images/${post.image}',
              fit: BoxFit.cover,
            )),
        Container(
            height: 44,
            padding: const EdgeInsets.only(left: 12, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () => onPressLike(),
                        child: SvgPicture.asset(
                          'assets/icons/${post.isLike ? 'heart-fill' : 'heart'}.svg',
                          color: post.isLike ? null : context.text,
                        )),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      'assets/icons/comment.svg',
                      color: context.text,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      'assets/icons/share.svg',
                      color: context.text,
                    )
                  ],
                ),
                SvgPicture.asset(
                  'assets/icons/bookmark.svg',
                  color: context.text,
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '좋아요 100개',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 6,
              ),
              Text.rich(TextSpan(
                  text: '${post.profile.nickname} ',
                  children: [
                    TextSpan(
                        text: post.content,
                        style: const TextStyle(fontWeight: FontWeight.w400))
                  ],
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600))),
              const SizedBox(
                height: 6,
              ),
              Text(
                '댓글 14개 모두 보기',
                style: TextStyle(fontSize: 14, color: context.subText),
              ),
              Container(
                  height: 38,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const AvatarWidget(
                            size: 24,
                            avatar: 'profile.jpeg',
                            story: false,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '댓글 달기...',
                            style:
                                TextStyle(fontSize: 14, color: context.subText),
                          ),
                        ],
                      ),
                      Text(
                        '❤️  🙌',
                        style: TextStyle(fontSize: 14, color: context.subText),
                        strutStyle: const StrutStyle(forceStrutHeight: true),
                      )
                    ],
                  )),
              Text(
                '30분 전',
                style: TextStyle(fontSize: 12, color: context.subText),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}
