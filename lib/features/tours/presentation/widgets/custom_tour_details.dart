import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class CustomTourDetails extends StatelessWidget {
  final String title;
  final String body;
  final IconData icon;
  const CustomTourDetails(
      {super.key, required this.title, required this.body, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: AppSizes.borderRadiusMd,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(AppSizes.padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: ColorRes.primary,
            size: AppSizes.iconLg,
          ),
          SizedBox(width: AppSizes.padding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorRes.primary,
                      ),
                ),
                SizedBox(height: AppSizes.spaceBtwTexts),
                Text(
                  maxLines: 3,
                  body,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: ColorRes.primaryBGAppBar,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
