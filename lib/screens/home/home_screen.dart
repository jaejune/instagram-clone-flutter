import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:instagram_clone/gen/assets.gen.dart';
import 'package:instagram_clone/insta_icons.dart';
import 'package:instagram_clone/screens/home/home_controller.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/avatar_widget.dart';
import 'package:instagram_clone/widgets/post_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  Widget _story(BuildContext context,
      {required String avatar, required String nickname}) {
    return Container(
        margin: const EdgeInsets.only(right: 12),
        width: 72,
        child: Column(
          children: [
            AvatarWidget(size: 60, avatar: avatar),
            Container(
                alignment: Alignment.center,
                height: 22,
                margin: const EdgeInsets.only(bottom: 3),
                child: Text(
                  nickname,
                  style: const TextStyle(fontSize: 11.5),
                )),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/logo.svg',
                        color: context.text,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        InstaIcons.arrowDown,
                        size: 18,
                      )
                    ],
                  ),
                  Wrap(
                    spacing: 24,
                    children: [
                      SvgPicture.asset('assets/icons/heart.svg'),
                      const Icon(InstaIcons.message),
                      const Icon(InstaIcons.add),
                    ],
                  )
                ],
              )),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: context.border, width: 0.5))),
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 12),
                          width: 72,
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const SizedBox(
                                    height: 72,
                                    width: 72,
                                  ),
                                  ClipOval(
                                    child: SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Assets.images.profile
                                          .image(fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                      right: 5,
                                      bottom: 5,
                                      child: SvgPicture.asset(
                                          'assets/icons/plus_button.svg'))
                                ],
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  height: 22,
                                  margin: const EdgeInsets.only(bottom: 3),
                                  child: const Text(
                                    '내 스토리',
                                    style: TextStyle(fontSize: 11.5),
                                  )),
                            ],
                          )),
                      ...List.generate(controller.profileList.length, (index) {
                        final profile = controller.profileList[index];
                        return _story(context,
                            avatar: profile.avatar, nickname: profile.nickname);
                      })
                    ],
                  ))),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Obx(() => PostWidget(
                      enableHero: false,
                      onPressProfile: () => controller.toProfile(context),
                      post: controller.postList[index],
                      onPressLike: () => controller.updateLike(index),
                    )),
                childCount: controller.postList.length))
      ],
    );
  }
}


// SingleChildScrollView(
//         child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//             padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SvgPicture.asset('assets/icons/logo.svg',
//                         color: context.text),
//                     SizedBox(
//                       width: 8,
//                     ),
//                     SvgPicture.asset(
//                       'assets/icons/arrow_down.svg',
//                       color: context.text,
//                       height: 18,
//                     )
//                   ],
//                 ),
//                 Wrap(
//                   spacing: 24,
//                   children: [
//                     SvgPicture.asset('assets/icons/heart.svg',
//                         color: context.text),
//                     SvgPicture.asset('assets/icons/message.svg',
//                         color: context.text),
//                     SvgPicture.asset('assets/icons/add.svg',
//                         color: context.text),
//                   ],
//                 )
//               ],
//             )),

//         PostWidget()
//       ],
//     ));