import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/utils/helpers/navigation_extension.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/exports.dart';
import '../../../utils/device/device_utility.dart';

class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  DAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.centerTitle = true,
    this.leadingWidget,
    this.actions,
    this.bgColor,
    this.arrowBackColor = false,
    this.showBackGroundColor = false,
    this.doSomeThing,
  });

  final String? title;
  final bool showBackArrow;
  final bool showBackGroundColor;
  final bool centerTitle;
  final bool arrowBackColor;
  // final IconData? leadingIcon;
  final List<Widget>? actions;
  // final VoidCallback? leadingOnPressed;
  final Widget? leadingWidget;
  final Color? bgColor;
  void Function()? doSomeThing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 32.sp,
          fontFamily: "Cairo",
          color: ColorRes.primary),
      backgroundColor: bgColor ?? ColorRes.primaryLight,
      automaticallyImplyLeading: false,
      // leadingWidth: 85.w,
      leading: showBackArrow
          ? IconButton(
              onPressed: () {
                if (doSomeThing != null) {
                  doSomeThing!();
                }
                context.pop();
              },
              icon: Icon(Icons.arrow_back_ios,
                  color:
                      arrowBackColor ? ColorRes.greenBlue : ColorRes.greenBlue))
          : Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: leadingWidget,
            ),
      title: Text(title ?? ""),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
