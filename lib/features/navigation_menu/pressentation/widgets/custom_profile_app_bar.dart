import 'package:flutter/material.dart';

import '../../../../utils/device/device_utility.dart';

class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.login,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
