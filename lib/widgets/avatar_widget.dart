import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget(
      {super.key, required this.size, required this.avatar, this.story = true});
  final double size;
  final String avatar;
  final bool story;
  @override
  Widget build(BuildContext context) {
    return story
        ? Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: size * 1.2,
                width: size * 1.2,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, gradient: kGradient),
              ),
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
