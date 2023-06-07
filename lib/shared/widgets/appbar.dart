import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';

class MoniepointTestAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? leadingIcon;
  final String? titleText;
  final Widget? titleWidget;
  final Widget? trailing;
  final Color? backgroundColor;
  final bool centerTitle;
  final double? elevation;
  final Color? shadowColor;
  final double? appHeight;
  final double? leadingWidth;

  const MoniepointTestAppBar({
    Key? key,
    this.leadingIcon,
    this.titleText,
    this.titleWidget,
    this.trailing,
    this.centerTitle = true,
    this.elevation = 0,
    this.shadowColor = Colors.white,
    this.backgroundColor,
    this.leadingWidth = 56.0,
    this.appHeight = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      shadowColor: shadowColor,
      backgroundColor: backgroundColor,
      leadingWidth: leadingWidth,
      toolbarHeight: 94.h,
      centerTitle: centerTitle,
      title: titleWidget,
      leading: leadingIcon ??
          BackButton(
            color: AppColors.black[15],
          ),
      actions: [trailing ?? const SizedBox()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appHeight!);
}
