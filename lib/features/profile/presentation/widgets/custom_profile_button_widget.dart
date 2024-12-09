import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

class CustomProfileButtonWidget extends StatelessWidget {
  final Widget icon;
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
    return Padding(
      padding: EdgeInsets.all(AppSizes.productItemHeight),
      child: Card(
        elevation: 4, // Adds a slight shadow to make it stand out
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Spread out elements
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    icon,
                    SizedBox(width: 10), // Space between icon and text
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87, // Text color
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16, // Smaller icon for a subtle arrow
                  color: Colors.grey, // Subtle icon color
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
