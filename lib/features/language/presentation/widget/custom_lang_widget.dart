import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/colors.dart';

class CustomLangWidget extends StatelessWidget {
  final String langName;
  final String imagPath;
  final VoidCallback onTab;
  final double? hight;
  final double? width;
  final bool isSvg;
  const CustomLangWidget(
      {required this.imagPath,
      required this.langName,
      required this.onTab,
      this.hight,
      this.width,
      this.isSvg = false});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: ColorRes.langGrad, begin: Alignment.topLeft)),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                isSvg
                    ? SvgPicture.asset(
                        imagPath,
                        height: hight,
                      )
                    : Image.asset(
                        height: hight,
                        imagPath,
                        fit: BoxFit.fill,
                      ),
                const Spacer(),
                Text(
                  langName,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
