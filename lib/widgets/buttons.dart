import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key,
      this.margin,
      this.padding,
      required this.onPressed,
      this.secondary = false,
      required this.text,
      this.minWidth,
      this.width,
      this.fontSize,
      this.fontColor = Colors.white});
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Function() onPressed;
  final bool secondary;
  final String text;
  final double? minWidth;
  final double? width;
  final double? fontSize;

  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32,
        width: width,
        margin: margin ?? EdgeInsets.zero,
        constraints: BoxConstraints(minWidth: minWidth ?? 78),
        child: CupertinoButton(
          minSize: 0,
          padding: padding ?? EdgeInsets.zero,
          onPressed: onPressed,
          color: secondary ? context.secondary : context.primary,
          borderRadius: BorderRadius.circular(8),
          child: Text(
            text,
            style: TextStyle(
                color: secondary ? context.text : fontColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: 'Pretendard'),
          ),
        ));
  }
}

class DefaultIconButton extends StatelessWidget {
  const DefaultIconButton(
      {super.key,
      this.margin,
      this.padding,
      required this.onPressed,
      this.secondary = false,
      required this.icon,
      this.minWidth,
      this.width,
      this.iconSize,
      this.iconColor = Colors.white});
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Function() onPressed;
  final bool secondary;
  final IconData icon;
  final double? minWidth;
  final double? width;
  final double? iconSize;

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32,
        width: width ?? 32,
        margin: margin ?? EdgeInsets.zero,
        child: CupertinoButton(
            minSize: 0,
            padding: padding ?? EdgeInsets.zero,
            onPressed: onPressed,
            color: secondary ? context.secondary : context.primary,
            borderRadius: BorderRadius.circular(8),
            child: Icon(
              icon,
              color: secondary ? context.text : iconColor,
              size: 16,
            )));
  }
}
