import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:instagram_clone/gen/assets.gen.dart';
import 'package:instagram_clone/screens/home/home_controller.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/avatar_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  Widget _story(BuildContext context,
      {required String avatar, required String nickname}) {
    return Container(
        margin: EdgeInsets.only(right: 12),
        width: 72,
        child: Column(
          children: [
            AvatarWidget(size: 60, avatar: avatar),
            Container(
                alignment: Alignment.center,
                height: 22,
                margin: EdgeInsets.only(bottom: 3),
                child: Text(
                  nickname,
                  style: TextStyle(fontSize: 11.5),
                )),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
          child: SvgPicture.asset('assets/icons/logo.svg', color: context.text),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                padding: EdgeInsets.only(left: 8, right: 8, top: 5),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: context.border))),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 12),
                        width: 72,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
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
                              ],
                            ),
                            Container(
                                alignment: Alignment.center,
                                height: 22,
                                margin: EdgeInsets.only(bottom: 3),
                                child: Text(
                                  '내 스토리',
                                  style: TextStyle(fontSize: 11.5),
                                )),
                          ],
                        )),
                    ...List.generate(controller.storyList.length, (index) {
                      final profile = controller.storyList[index];
                      return _story(context,
                          avatar: profile.avatar, nickname: profile.nickname);
                    })
                  ],
                ))),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        AvatarWidget(size: 30, avatar: 'profile.jpeg'),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ruffles',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
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
              ),
              SizedBox(
                  height: Get.width,
                  child: Image.asset(
                    'assets/images/sample1.jpeg',
                    fit: BoxFit.cover,
                  )),
              Container(
                  height: 44,
                  padding: EdgeInsets.only(left: 12, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/heart.svg'),
                          SizedBox(
                            width: 12,
                          ),
                          SvgPicture.asset('assets/icons/comment.svg'),
                          SizedBox(
                            width: 12,
                          ),
                          SvgPicture.asset('assets/icons/share.svg')
                        ],
                      ),
                      SvgPicture.asset('assets/icons/bookmark.svg')
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '좋아요 100개',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text.rich(TextSpan(
                        text: '동글동글이ᰔᩚ ',
                        children: [
                          TextSpan(
                              text: '신상 소라빵 모자',
                              style: TextStyle(fontWeight: FontWeight.w400))
                        ],
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '댓글 14개 모두 보기',
                      style: TextStyle(fontSize: 14, color: context.subText),
                    ),
                    Container(
                      height: 38,
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          AvatarWidget(
                            size: 24,
                            avatar: 'profile.jpeg',
                            story: false,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '댓글 달기...',
                            style:
                                TextStyle(fontSize: 14, color: context.subText),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '30분 전',
                      style: TextStyle(fontSize: 12, color: context.subText),
                    ),
                    SizedBox(
                      height: 24,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
