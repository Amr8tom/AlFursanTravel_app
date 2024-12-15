import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CustomProfileButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const CustomProfileButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Card(
        elevation: 4, // Adds a slight shadow to make it stand out
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppSizes.borderRadiusLg), // Rounded corners
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.padding, vertical: AppSizes.padding),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Spread out elements
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: ColorRes.primary,
                    ),
                    SizedBox(
                        width: AppSizes.padding), // Space between icon and text
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: AppSizes.fontSizeSm,
                        fontWeight: FontWeight.w600,
                        color: ColorRes.primary, // Text color
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorRes.primary, // Subtle icon color
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
