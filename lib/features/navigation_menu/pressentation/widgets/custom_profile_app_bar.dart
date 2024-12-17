import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';

import '../../../../utils/device/device_utility.dart';

class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: DAppBar(
        bgColor: Colors.white,
        title: "",
        showBackArrow: true,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
