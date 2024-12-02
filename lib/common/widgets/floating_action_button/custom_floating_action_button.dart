import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String textButton;
  Color? color;
  Widget? icon;
  final void Function() onPressed;
  CustomFloatingActionButton(
      {Key? key,
      required this.textButton,
      required this.onPressed,
      this.color,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 0,
      onPressed: onPressed,
      label: Row(
        children: [
          Text(textButton,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: ColorRes.white)),
          SizedBox(width: AppSizes.spaceBetweenIcon),
          icon ?? Icon(Icons.arrow_forward, color: ColorRes.white)
        ],
      ),
      backgroundColor: color ?? ColorRes.primary,
    );
  }
}
