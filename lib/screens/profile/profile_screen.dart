import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:instagram_clone/screens/profile/profile_controller.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/avatar_widget.dart';
import 'package:instagram_clone/widgets/buttons.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  Widget _appBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        height: 40,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '동글동글이',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset('assets/icons/badge.svg')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/arrow-left.svg',
                  color: context.text,
                ),
                SvgPicture.asset(
                  'assets/icons/more.svg',
                  color: context.text,
                ),
              ],
            ),
          ],
        ));
  }

  Widget _followInfoArea() {
    return Row(
      children: [
        AvatarWidget(size: 75, avatar: 'profile.jpeg'),
        SizedBox(
          width: 60,
        ),
        Wrap(
          spacing: 30,
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
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _appBar(context),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _followInfoArea(),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '동글동글이',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Category/Genre text',
                  style: TextStyle(fontSize: 14, color: context.subText),
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                    width: 344,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt #hashtag',
                      style: TextStyle(fontSize: 14),
                    )),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                    width: 344,
                    child: Text(
                      'Link goes here',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: context.primaryText),
                    )),
                SizedBox(
                  height: 12,
                ),
                Row(
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
                      TextSpan(text: '닉네임', children: [
                        TextSpan(
                            text: '님, ',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        TextSpan(text: '닉네임'),
                        TextSpan(
                            text: '님 ',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        TextSpan(text: '외 1명'),
                        TextSpan(
                            text: '이 팔로우합니다',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                      ]),
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                            child: DefaultButton(
                          margin: EdgeInsets.only(right: 6),
                          onPressed: () {},
                          text: '팔로우',
                        )),
                        Expanded(
                            child: DefaultButton(
                          margin: EdgeInsets.only(right: 6),
                          secondary: true,
                          onPressed: () {},
                          text: '팔로우',
                        )),
                        Expanded(
                            child: DefaultButton(
                          margin: EdgeInsets.only(right: 6),
                          secondary: true,
                          onPressed: () {},
                          text: '팔로우',
                        )),
                      ],
                    )),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                        5,
                        (index) => Column(
                              children: [
                                AvatarWidget(
                                  size: 52,
                                  avatar: 'profile2.jpeg',
                                  readStory: true,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '스토리',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ))
                  ],
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
