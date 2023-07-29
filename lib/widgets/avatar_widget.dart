import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget(
      {super.key,
      required this.size,
      required this.avatar,
      this.story = true,
      this.readStory = false,
      this.visibleOutline = true});
  final double size;
  final String avatar;
  final bool visibleOutline;
  final bool story;
  final bool readStory;
  @override
  Widget build(BuildContext context) {
    return story
        ? Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                  visible: visibleOutline && readStory == false,
                  child: Container(
                    height: size * 1.2,
                    width: size * 1.2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, gradient: kGradient),
                  )),
              Visibility(
                  visible: readStory,
                  child: Container(
                    height: size * 1.15,
                    width: size * 1.15,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFC4C4C4)),
                  )),
              Container(
                height: size * 1.12,
                width: size * 1.12,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: context.background),
              ),
              ClipOval(
                child: SizedBox(
                  height: size,
                  width: size,
                  child:
                      Image.asset('assets/images/$avatar', fit: BoxFit.cover),
                ),
              ),
            ],
          )
        : ClipOval(
            child: SizedBox(
              height: size,
              width: size,
              child: Image.asset('assets/images/$avatar', fit: BoxFit.cover),
            ),
          );
  }
}
