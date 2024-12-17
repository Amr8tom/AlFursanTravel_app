import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:fursan_travel_app/utils/helpers/navigation_extension.dart';
import 'package:iconsax/iconsax.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/contancts.dart';
import '../../../utils/constants/image_strings.dart';
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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AppBar(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 32.sp,
            fontFamily: "Cairo",
            color: ColorRes.primary),
        backgroundColor: bgColor ?? ColorRes.white,
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
                        arrowBackColor ? ColorRes.primary : ColorRes.primary))
            : Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: leadingWidget,
              ),
        title: Text(title ?? ""),
        centerTitle: centerTitle,
        actions: actions ??
            [
              IconButton(
                onPressed: () {
                  Contacts.makePhoneCall("+201024264021");
                },
                icon: const Icon(Iconsax.call, color: ColorRes.primary),
                color: ColorRes.primary,
              ),
              SizedBox(
                width: AppSizes.sm,
              ),
              InkWell(
                onTap: () {
                  Contacts.openWhatsAppChat(
                      num: "201024264021", message: S.current.whatisNewOffers);
                },
                child: SvgPicture.asset(
                  AssetRes.whatsappIconWhite,
                  color: ColorRes.primary,
                  height: 26.sp,
                ),
              ),
              SizedBox(
                width: AppSizes.padding * 1.4,
              ),
            ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
