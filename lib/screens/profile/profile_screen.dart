import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/global.dart';
import 'package:instagram_clone/insta_icons.dart';
import 'package:instagram_clone/screens/profile/profile_controller.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/avatar_widget.dart';
import 'package:instagram_clone/widgets/buttons.dart';
import 'package:instagram_clone/widgets/tab_bar.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  Widget _appBar(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        height: 40,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '동글동글이',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 4,
                ),
                SvgPicture.asset('assets/icons/badge.svg')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => context.pop(),
                    child: const Icon(InstaIcons.arrowLeft)),
                const Icon(InstaIcons.more),
              ],
            ),
          ],
        ));
  }

  Widget _followInfoArea() {
    return const Row(
      children: [
        AvatarWidget(size: 75, avatar: 'profile.jpeg'),
        SizedBox(
          width: 50,
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(text: '1,234\n', children: [
                TextSpan(
                    text: '게시물',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14))
              ]),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text.rich(
              TextSpan(text: '5,678\n', children: [
                TextSpan(
                    text: '팔로워',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14))
              ]),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text.rich(
              TextSpan(text: '9,101\n', children: [
                TextSpan(
                    text: '팔로잉',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14))
              ]),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            )
          ],
        )),
        SizedBox(
          width: 30,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBar(context),
              Expanded(
                  child: NestedScrollView(
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                            SliverPadding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 14),
                              sliver: SliverToBoxAdapter(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _followInfoArea(),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    '동글동글이',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '개인 블로그',
                                    style: TextStyle(
                                        fontSize: 14, color: context.subText),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const SizedBox(
                                      width: 344,
                                      child: Text(
                                        '동그래서 동글이! 🧀',
                                        style: TextStyle(fontSize: 14),
                                        strutStyle:
                                            StrutStyle(forceStrutHeight: true),
                                      )),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  SizedBox(
                                      width: 344,
                                      child: Text(
                                        'https://github.com/jaejune',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: context.primaryText),
                                      )),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                          width: 60,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                  right: 0,
                                                  child: AvatarWidget(
                                                    size: 26,
                                                    avatar: 'profile3.jpeg',
                                                    visibleOutline: false,
                                                  )),
                                              Positioned(
                                                  right: 14,
                                                  child: AvatarWidget(
                                                    size: 26,
                                                    avatar: 'profile2.jpeg',
                                                    visibleOutline: false,
                                                  )),
                                              AvatarWidget(
                                                size: 26,
                                                avatar: 'profile1.jpeg',
                                                visibleOutline: false,
                                              ),
                                            ],
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text.rich(
                                        TextSpan(text: '겸돌이', children: [
                                          TextSpan(
                                              text: '님, ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(text: '기름이'),
                                          TextSpan(
                                              text: '님 ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(text: '외 1명'),
                                          TextSpan(
                                              text: '이 팔로우합니다',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400)),
                                        ]),
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: DefaultButton(
                                            margin: const EdgeInsets.only(right: 6),
                                            onPressed: () {},
                                            text: '팔로우',
                                          )),
                                          Expanded(
                                              child: DefaultButton(
                                            margin: const EdgeInsets.only(right: 6),
                                            secondary: true,
                                            onPressed: () {},
                                            text: '메시지',
                                          )),
                                          Expanded(
                                              child: DefaultButton(
                                            margin: const EdgeInsets.only(right: 6),
                                            secondary: true,
                                            onPressed: () {},
                                            text: '이메일',
                                          )),
                                          DefaultIconButton(
                                            secondary: true,
                                            onPressed: () {},
                                            icon: InstaIcons.showPeople,
                                          ),
                                        ],
                                      )),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ...List.generate(
                                          5,
                                          (index) => Column(
                                                children: [
                                                  AvatarWidget(
                                                    size: 52,
                                                    avatar:
                                                        fakeProfileList[index]
                                                            .avatar,
                                                    readStory: true,
                                                  ),
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  const Text(
                                                    '스토리',
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  )
                                                ],
                                              ))
                                    ],
                                  )
                                ],
                              )),
                            ),
                            SliverPinnedHeader(
                                child: DefaultTabBar(
                                    controller: controller.tabController,
                                    tabs: const [
                                  Tab(
                                    icon: Icon(InstaIcons.grid),
                                  ),
                                  Tab(
                                    icon: Icon(InstaIcons.reels),
                                  ),
                                  Tab(
                                    icon: Icon(InstaIcons.mention),
                                  )
                                ]))
                          ],
                      body: TabBarView(
                        controller: controller.tabController,
                        children: [
                          GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 1,
                                    crossAxisSpacing: 1),
                            itemCount: fakePostList.length,
                            itemBuilder: (context, index) {
                              final post = fakePostList[index];
                              return Image.asset(
                                'assets/images/${post.image}',
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                          const SizedBox(),
                          const SizedBox(),
                        ],
                      )))
            ],
          )),
    );
  }
}
